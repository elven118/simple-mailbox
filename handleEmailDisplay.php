<?php
	$conn=mysqli_connect('localhost','root','') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'email') or die ('Failed to Access DB'.mysqli_error($conn));
	
	$mailbox = $_GET['mailbox'];
	
	$page = $_GET['page'];
	
	$query2 = "SELECT COUNT(*) AS total FROM emails WHERE mailbox =  '$mailbox'";
	
	$result2 = mysqli_query($conn, $query2) or die ('Failed to query '.mysqli_error($conn));
	
	$count = mysqli_fetch_array($result2);
	
	$totalPages = $count['total'] == 0 ? 1 : floor(($count['total'] + 4) / 5);

	$getFrom = $page * 5;
	
	$query = "SELECT * FROM emails WHERE mailbox = '$mailbox' ORDER BY emailID DESC LIMIT ".$getFrom.", 5";
	
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	
	while($row = mysqli_fetch_array($result)){
	    print "<div class=\"col-8 eachEmail\" id=".$row['emailID']." onclick=\"loadEmailContent(this)\"><div class=\"colt-1 check\"><input class=\"checkbox\" name=\"checkBox\" type=\"checkbox\"></div>";
		print "<p class=\"colt-1 sender\">".$row['sender']."</p>";
		print "<p class=\"colt-1 title\">".$row['title']."</p>";
		print "<p class=\"colt-1 date\">".$row['date']."</p></div>";
	}
	print $totalPages;
?>