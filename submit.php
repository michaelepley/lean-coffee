<?php
include_once 'dbconnect.php';
connectDB();
parse_str($_SERVER["QUERY_STRING"], $data);
$selectedOptions = array();

foreach ($data as $item => $value) {
if ($value == "true") {
	array_push($selectedOptions,$item);
	$valueInt = $item . "_value";
	$qq = "UPDATE sliders_runs SET $valueInt = $valueInt + 1 WHERE hash = '" . $_REQUEST['hash'] . "'";
	$result = pg_query($db, $qq);
}
}

$qq2 = "UPDATE sliders_runs SET totalvotes = totalvotes + 1 WHERE hash = '" . $_REQUEST['hash'] . "'";

$result2 = pg_query($db, $qq2);


header("Location: thanks.php");

?>