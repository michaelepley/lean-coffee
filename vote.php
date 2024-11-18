<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Red Hat One Lean Coffee</title>
<link rel="stylesheet" type="text/css" href="css/overpass.css"/>
<script src="js/jquery-3.3.1.js"></script>
  <script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.ui.labeledslider.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.ui.labeledslider.js"></script>
  <script>
  $( function() {
    $( "#eq > span" ).each(function() {
      // read initial values from markup and remove that
      var value = parseInt( $( this ).text(), 3 );
      $( this ).empty().slider({
        value: value,
        range: "min",
        animate: true,
        orientation: "horizontal"
      });
    });
  } );

  </script>

</head>
<body>
<div class="header">
<center><h2>Red Hat One Lean Coffee</h2> </center>
</div>

<div id="content">
<center><h2>Red Hat One Lean Coffee - Voting Time!</h2> </center>
<div class="widget">


<div class=boxy><h3>You only have 3 votes so vote wisely!</h3>

<ul class="ks-cboxtags">
  <form action="submit.php">
    <input type="hidden" name="hash" value="<?php echo $_REQUEST['hash']; ?>"
<?php
include_once 'dbconnect.php';
connectDB();
$qq = "SELECT * from sliders_runs where hash = '" . $_REQUEST['hash'] . "'";
$result = pg_query($db, $qq);
$rowQuestion = pg_fetch_assoc($result);

$q1 = "SELECT * from sliders_topics";
$result1 = pg_query($db, $q1);
$rowTopic = array(); 
$idList = array();

while($row = pg_fetch_assoc($result1)) {
	$id = $row['id'];
	$topic = $row['topics'];
	$rowTopic[$id] = $topic;
}	


print "  <ol class='rounded-list'>";
$i = 1;
	for ($x = 1; $x <= 10; $x++) {
    print '<li><input type="checkbox" name="' . "q" . $i . '" id="' . "q" . $i . '" value="true"><label for="' . "q" . $i . '">' . $rowTopic[$rowQuestion['q' . $x]] . '&nbsp </label></li>'. "\n";

    $i++;
}		
print "<ol><input class='ui-button ui-widget ui-corner-all' id='submitButton' type='submit' name='Submit' value='Submit Votes'></div>";

print "</div>";
?>

</ul>
</div>

</div>
<script type="text/javascript" >
$("input:checkbox").click(function() {
var bol = $("input:checkbox:checked").length >= 3;     
$("input:checkbox").not(":checked").attr("disabled",bol);
});
</script>
</html>
