<?php
// Retrieve the selected action from the AJAX request
if(isset($_POST['action'])){
	$action = $_POST['action'];

	include('connectionData.txt');

	$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	// Generate the appropriate set of options based on the selected action
	switch($action){
		case "view":
			$sql = "SHOW TABLES";
			break;
		case "insert":
			$sql = "SHOW TABLES";
			break;
		case "delete":
			$sql = "SHOW TABLES";
			break;
		case "update":
			$sql = "SHOW TABLES";
			break;
		default:
			$sql = "SHOW TABLES";
			break;
	}

	$result = $conn->query($sql);

	// Generate the HTML code for the options
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo "<option value='".$row['Tables_in_'.$dbname]."'>".$row['Tables_in_'.$dbname]."</option>";
		}
	} else {
		echo "<option>No tables found</option>";
	}

	$conn->close();
}
?>
