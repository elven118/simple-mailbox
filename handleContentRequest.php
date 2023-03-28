<?php

	$conn=mysqli_connect('localhost','root','') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'email') or die ('Failed to Access DB'.mysqli_error($conn));
	
	$query = "SELECT * FROM emails WHERE emailID = ".$_GET['id'];
	
	$result = mysqli_query($conn, $query) or die ('Failed to query '.mysqli_error($conn));
	
	while ($row = mysqli_fetch_array($result)) {
	  print "<div id=\"emailContent\" class=\"col-8\"><p><b>Sender: </b>".$row['sender']."</p>";
	  print "<p><b>Title: </b>".$row['title']."</p>";
	  print "<p><b>Date: </b>".$row['date']."</p>";
	  print "<p><b>Content: </b></p>";
	  print "<p>".$row['content']."</p></div>";
	}
?>