<?php
header('Content-Type: application/json; charset=utf-8');
include('usbong-fits-connect.php');
$mysqli->query("SET CHARACTER SET 'UTF8'");
$mysqli->query("SET CHARSET 'UTF8'");
$mysqli->query("SET COLLATION_CONNECTION = 'utf8_unicode_ci'");

if (!$mysqli->set_charset("utf8")) {
	echo "Error loading character set utf8: " . $mysqli->error;
} else {
	echo "Current character set:" . $mysqli->character_set_name() . "\r\n";
}

$json = file_get_contents('php://input');
if(isset($json)) {
	$data = json_decode($json, TRUE);
	// echo var_dump($data);
	if(is_null($json) == false) {
		$oid = $mysqli->real_escape_string($data['_id']['$oid']);
		$wordid = $mysqli->real_escape_string($data['wordid']);
		$word = $mysqli->real_escape_string($data['word']);
		$syn = $mysqli->real_escape_string($data['syn']);
		$def = $mysqli->real_escape_string($data['def']);
		$posn = $mysqli->real_escape_string($data['posn']);
		$pos = $mysqli->real_escape_string($data['pos']);
		$submitter = $mysqli->real_escape_string($data['submitter']);
		$doe = $mysqli->real_escape_string($data['doe']);
		$wordsize = $mysqli->real_escape_string($data['wordsize']);
		$hanja = $mysqli->real_escape_string($data['hanja']);
		$frequency = $mysqli->real_escape_string($data['frequency']);
	}	
}

$resultQuery = $mysqli->query("INSERT INTO koreandict (_id, worid, word, syn, def, posn, pos, submitter, doe, wordsize, hanja, frequency) VALUES ('$oid','$wordid','$word','$syn','$def','$posn','$pos','$submitter','$doe','$wordsize','$hanja','$frequency')");

if($resultQuery){
	$jsonResponse = array(
		"result" => "OK",
		"date_created" => date("Y-m-d-h-i-s")
	);
} else {
	$jsonResponse = array(
		"result" => "NG:Fail DB",
		"date_created" => date("Y-m-d-h-i-s")
	);
}

echo json_encode($jsonResponse);
?>

