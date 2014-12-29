#Gorsys Epoch/Overpoch Cleanup Script for Restarts. Do not use without permission. www.zombz.net
#Please Read
#-----------------------
#If you are running this tool for the first time, it will take a very long time to clean up your database.
#after being run once, it will then run extremely fast each restart, keeping your database nice n sexy.
#reducing load, and increasing response times from the sql database.
#Configureables are provided for easy use and adjustment to your needs.
#Always Provide Credits, and Ask for permision before use.
use DBI;
use DBD::mysql;
print "\n\nGORSYS AWESOME CLEANUP TOOL\n---------------------------------------\n\n";
#-----------------------------------------------------------------------------------------------
# Database Info
$platform = "mysql";
#	Test Server
$database = "overpoch_test"; 	#Databse Name
$user = 	"opochTestServer"; 	# Username 

#	Live Server
# $database = "overpoch_live"; 	#Databse Name
# $user = 	"opochLiveServer"; 	# Username 

$host = "localhost";			# IP
$port = "3306"; 				# Port (default 3306)
$pw = 	"ZombZ=thebest"; 		# Password

#-----------------------------------------------------------------------------------------------
$dsn = "dbi:$platform:$database:$host:$port"; #do not edit this.
$connect = DBI->connect($dsn, $user, $pw); #do not edit this.
#-----------------------------------------------------------------------------------------------
#ON/OFF SECTION. Set to 1 if on. 0 for off. Aditional options provided below each section.

my $cleanup_old_players 	= 1; #Deletes players from database completly.
	my $months_of_inactivity	= 3; #months since last login to fully delete players.
#------
my $cleanup_old_lives 		= 1; #Removes old lives. Leaves the last remaining one to save stats.
#------
my $cleanup_objects 		= 1; #Deletes objects from database.
	my $object_from_creation_time = 15; # days to delete if not updated after first build
	my $object_after_creation_time = 10; # after first build time has passed, how many days before deletion
#------
my $cleanup_player_data		= 1; #will clear out the player_data table if the UID is not in the main db, can be intensive
#------
my $cleanup_player_login 	= 1; #will clear out the login table
	my $player_login_months	= 0; # if set to 0 will clear all, if set to 1 then it will save 1 months worth 2 is 2 months, and so on.


#-----------------------------------------------------------------------------------------------
#PLAYER CLEANUP (leaves last life alive)
if ($cleanup_old_lives == 1){
	#doing the player cleanup
	$vehicle = "SELECT PlayerUID FROM character_data group by PlayerUID having count(*) > 1;";
	$query_handle = $connect->prepare($vehicle);
	# EXECUTE THE QUERY
	$query_handle->execute();
	#create the query @row2
	my @row2 = qw();
	#push all the rows into an array @row2
	while(@row = $query_handle->fetchrow_array) {
	       
	       push (@row2, @row); 
	}
	#foreach thing in the array run this
	foreach (@row2){ 
		#run the query
		$query= "SELECT CharacterID FROM character_data WHERE PlayerUID='$_' ORDER BY Datestamp;";
		$query_handle2 = $connect->prepare($query);
		$query_handle2->execute();
		#create the array
		my @row3 = qw();
		#reset count to 0
		$count=0;
		#create the array
		my @row4 = qw();
		#create our array of character IDs only for the searched PlayerUID store each row into the new array @row4
		while(@row3 = $query_handle2->fetchrow_array) {
	       push (@row4, @row3);
	       #tell the code we added to the array
	       $count = $count +1; 
		}
		#reset array string just incase
		$arraystring ="";
		#remove the last entry from the array (the last life)
		my $safe = pop @row4;
		#implode the array into a string, so it can be used in the query (add speechmarks and comma between each)
		my $arraystring = join('","', @row4);
		#add the speechmarks at the start and end
		$arraystring = "\"$arraystring\"";
		#print $_ . " UID Scanning.... $count Entrys Found... ";
		#print $arraystring . "... Deleting Lives... \n";
		#run the query
		$query="DELETE from character_data WHERE CharacterID IN ($arraystring);";
		$query_handle3 = $connect->prepare($query);
		$query_handle3->execute();
		print "$_ Deleting.... " . $safe . " Life left safe for $_... Completed \n \n";

	}
}else{
	print "Player Cleanup Switched Off.\n";
}
#-----------------------------------------------------------------------------------------------
#Object Cleanups
if ($cleanup_objects == 1){
	print "Cleaned up Old Objects.....\n";
	$object_query = "DELETE FROM `Object_DATA` WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL $object_after_creation_time DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL $object_from_creation_time DAY);";
	$query_handle2 = $connect->prepare($object_query);
	$query_handle2->execute();
}else{
	print "Cleanup Objects Switched Off.\n"
}

#-----------------------------------------------------------------------------------------------
#cleanout the player login table.
if ($cleanup_player_login == 1){
	print "Cleaned up Player Login.....\n";
	$vehicle = "DELETE FROM player_login WHERE Datestamp < DATE_SUB(NOW(), INTERVAL $player_login_months MONTH);";
	$query_handle = $connect->prepare($vehicle);
	$query_handle->execute();
}else{
	print "Cleanup Player Login Switched Off.\n";
}

#-----------------------------------------------------------------------------------------------
#Old Player Cleanup, Run First So dead player cleanup runs faster.
if ($cleanup_old_players == 1){
	print "Cleaned up Old Players.....\n";
	$vehicle = "DELETE FROM character_data WHERE LastLogin < DATE_SUB(NOW(), INTERVAL $months_of_inactivity MONTH);";
	$query_handle = $connect->prepare($vehicle);
	$query_handle->execute();
}else{
	print "Cleanup Old Players Switched Off.\n";
}

#-----------------------------------------------------------------------------------------------
#Clean out player data table
if ($cleanup_player_data == 1){
	print "Player Data Cleaned Up \n";
	$query = "DELETE FROM player_data WHERE PlayerUID NOT IN(SELECT PlayerUID FROM character_data);";
	$query_handle = $connect->prepare($query);
	$query_handle->execute();
}else{
	print "Cleanup Player Data Switched Off\n";
}



print "\nFINISHED\n\nCreated by Gorsy,\n \n \n---------------------------------------\n\n\n";
