<?php
include_once 'dbconnect.php';
connectDB();

$qq = "DELETE from sliders_topics where id = '" . $_REQUEST['topicId'] . "'";
$result = pg_query($db, $qq);
header("Location: index.php");
?>