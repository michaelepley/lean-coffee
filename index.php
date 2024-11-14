<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>RH1 Lean Coffee</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css//overpass.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/e5af0197db.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript" >
$(function() {
    $('.confirm').click(function(e) {
        e.preventDefault();
        if (window.confirm("Are you sure you want to delete this topic?")) {
            location.href = this.href;
        }
    });
});
</script>  
  
<script type="text/javascript" >
function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}
</script>

</head>
<body>


<center><h2>Red Hat One Lean Coffee</h2> </center>
<?php
if (isset($_REQUEST['hash'])) {
include_once 'dbconnect.php';
connectDB();
$qq = "SELECT * from sliders_runs where hash = '" . $_REQUEST['hash'] . "'";
$result = pg_query($db, $qq);
$rowQuestion = pg_fetch_assoc($result);

$q1 = "SELECT * from sliders_topics";
$result1 = pg_query($db, $q1);
$rowTopic = array(); 

while($row = pg_fetch_assoc($result1)) {
	$id = $row['id'];
	$topic = $row['topics'];
	$rowTopic[$id] = $topic;
}	

	$link = "http://" . $_SERVER['HTTP_HOST'] . "/lean-coffee/vote.php?hash=" . $_REQUEST['hash'];

print "<div id=\"centerDiv\"><h3>Link:</h3><p id='linkText'> <a href=vote.php?hash=" . $_REQUEST['hash'] . " target=_blank >" . $link . "</a></p>" ;

print '<img src="https://api.qrserver.com/v1/create-qr-code/?data=' . $link . '&amp;size=500x500" alt="" title="" /><br>';


print '<button class="ui-button ui-widget ui-corner-all" onclick="copyToClipboard(\'#linkText\')">Copy URL</button>&nbsp&nbsp&nbsp';

print "<a target=_blank href=\"view.php?hash=" . $_REQUEST['hash'] . "\"class=\"ui-button ui-widget ui-corner-all\" type=\"submit\" value=\"View Results\" >View Results</a>&nbsp&nbsp&nbsp";

print "<a href=\"index.php\" class=\"ui-button ui-widget ui-corner-all\" type=\"submit\" value=\"Start Again\" >Start Again</a>";

## Topic Table
#print "<div class=boxy><h3>Chosen Topics</h3>";
#print "  <ol class='rounded-list'>";
#
#	for ($x = 1; $x <= 10; $x++) {
#	  print "<li><a href=#>" . $rowTopic[$rowQuestion['q' . $x]] . "</a></li>";		
#}		
#print "<ol></div>";
print "</div>";
exit();
}
?>
<br>
<div class="widget">
<div class="container">
<form action="generateNew.php">

  <fieldset>
    <h4 class="centerDiv">Select the required topics for discussion (maximum of 10)</h4>
<ul class="ks-cboxtags">

<?php
include_once 'dbconnect.php';
connectDB();
$i = 1;
$qq = "select * from sliders_topics order by topics";
$res = pg_query($db, $qq);
while ($row = pg_fetch_assoc($res)) {
print '<li><input type="checkbox" name="' . "q" . $i . '" id="' . "q" . $i . '" value="' . $row['id'] . '"><label for="' . "q" . $i . '">' . $row['topics'] . '&nbsp <a class="confirm" href=deleteTopic.php?topicId=' . $row['id'] .'><img src=images/delete.png></a></label></li>'. "\n";
$i++;
}
?>
</ul>
<div class="row">
  </fieldset>

<input class='ui-button ui-widget ui-corner-all' id='submitButton' type='submit' name='Submit' value='Generate Poll'>
</form>
<br><br>
<form action="addTopic.php">
<legend><p>Add new: <i class="fas fa-arrow-circle-right"></i> <input type=text class="underlined" width="100" id="newTopic" name="newTopic" value=""></input></p></legend>
<input class='ui-button ui-widget ui-corner-all' id='submitButton' type='submit' name='Submit' value='Submit new topic'>
</form> 
</div>
</div>
</body>
<script type="text/javascript" >
$("input:checkbox").click(function() {
var bol = $("input:checkbox:checked").length >= 10;     
$("input:checkbox").not(":checked").attr("disabled",bol);
});
</script>

</html>
