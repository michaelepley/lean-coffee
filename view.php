<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Red Hat One Lean Coffee - Results</title>
<link rel="stylesheet" type="text/css" href="css/overpass.css"/>
<script src="js/jquery-3.3.1.js"></script>
  <script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.ui.labeledslider.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.ui.labeledslider.js"></script>
</head>
<body>

<div id="content">
<center><h2>Red Hat One Lean Coffee - Results</h2> </center>
<div id="centerDiv">

<?php
if (!isset($_REQUEST['hash'])) {
print "<p>Hmmm - no results found</p><p>Did you miss out the hash in the URL ??</p>";
exit;
}
include_once 'dbconnect.php';
connectDB();

$qq = "SELECT * from sliders_runs where hash = '" . $_REQUEST['hash'] . "'";
$result = pg_query($db, $qq);
$rowQuestion = pg_fetch_assoc($result);

$totalVotes = $rowQuestion['totalvotes'];
print "<h3>Total Votes: $totalVotes </h3>";
$topics = array();
$topicsScores = array();
$scoreArray = array();
foreach ($rowQuestion as $topic => $value) {
	if (preg_match('/^q/',$topic)) {
		if (preg_match('/_value/',$topic)) {
			$topScore = $value;
			array_push($topicsScores, $value);
		} 
		if (!preg_match('/_value/',$topic)) {		
		$q2 = "SELECT topics FROM sliders_topics where id = '" . $value . "'";
		$res2 = pg_query($db, $q2);
		$tops = pg_fetch_assoc($res2);
		array_push($topics, $tops['topics']);
		}
}
}

for ($ii = 0; $ii < count($topics); $ii++) {
	$tt = $topics[$ii];
	$scoreArray[$tt] = $topicsScores[$ii];
#	Print "Topic: $topics[$ii] Score: $topicsScores[$ii]<br>";
  }


#print_r($scoreArray);
#print "<br><br>";
arsort($scoreArray);
#print_r($scoreArray);
## Print a table of the results
print '<div class="wrapper"><div class="table">
<div class="row header">
	<div class="cell">Topic</div>
	<div class="cell">Score</div>
</div><tbody>';

foreach ($scoreArray as $topicName => $topicScore) {
#	print "<tr><td>$topicName</td><td>$topicScore</td></tr>";
	print "<div class='row'><div class='cell'>$topicName</div><div class='cell'>$topicScore</div></div>";
}

print "</tbody></table>";
print "</div></div";
?>

</body>
</html>
