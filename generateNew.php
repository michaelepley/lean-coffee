<?php
include_once 'dbconnect.php';
connectDB();
$chars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
$hash = substr(str_shuffle($chars), 0, 5);

## NEW STUFF
$i=1;
$questionsArray = array();
foreach($_REQUEST as $key => $value) {
  if(preg_match('/^q/', $key)) {
    $questionsArray[$i] = $value;
    $i++;
  }
}

$fields = array('hash','q1','q2','q3','q4','q5','q6','q7','q8','q9','q10','totalvotes');

$chars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
$hash = substr(str_shuffle($chars), 0, 5);

$qq = "INSERT INTO sliders_runs (" . implode(',', $fields).") VALUES ('$hash','$questionsArray[1]','$questionsArray[2]','$questionsArray[3]','$questionsArray[4]','$questionsArray[5]','$questionsArray[6]','$questionsArray[7]','$questionsArray[8]','$questionsArray[9]','$questionsArray[10]','0')";


$result = pg_query($db, $qq);
header("Location: index.php?hash=$hash");

?>
