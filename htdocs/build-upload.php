<?php

date_default_timezone_set('Asia/Manila');
header('Content-Type: multipart/form-data');
include('usbong-fits-connect.php');

$utree_dir = "trees/";
$icons_dir = "icons/";
$talusan = "Talusan";
$treeTitle = $utree_dir . basename($_FILES['fileupload']['name']);


echo $treeTitle . "\r\n";

echo $_FILES['fileupload']['size'] . "\r\n";

$temp = explode(".",$_FILES["fileupload"]["name"]);
$uploader = $mysqli->real_escape_string($_POST['JP']);

echo $uploader . "\r\n";

$newfilename = $uploader . '.' . end($temp);
if (move_uploaded_file($_FILES["fileupload"]["tmp_name"], "$utree_dir/$newfilename")) {
	echo "The file ". basename( $_FILES["fileupload"]["name"]). " has been uploaded.\r\n";
} else {
	echo "Sorry, there was an error uploading your file.\r\n";
}

// //TEST FILEUPLOAD 1
// $temp1 = explode(".",$_FILES["fileupload1"]["name"]);
// $treeTitle1 = $utree_dir . basename($_FILES['fileupload1']['name']);
// $newfilename1 = $uploader . '1.' . end($temp1);
// if (move_uploaded_file($_FILES["fileupload1"]["tmp_name"], "$utree_dir/$newfilename1")) {
	// echo "The file1 ". basename( $_FILES["fileupload1"]["name"]). " has been uploaded.\r\n";
// } else {
	// echo "Sorry, there was an error uploading your file1.\r\n";
// }

?>