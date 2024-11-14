<?php
include_once 'dbconnect.php';
connectDB();

$qq = "INSERT INTO sliders_topics (topics,defaultValue) VALUES ('" . $_REQUEST['newTopic'] . "','1')";
$result = pg_query($db, $qq);
header("Location: index.php");
?>