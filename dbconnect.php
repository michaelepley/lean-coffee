<?php
function connectDB() {
## Database stuff
global $db;
$pg_host = getenv('POSTGRESQL_HOST');
$pg_db = getenv('POSTGRESQL_DATABASE');
$pg_user = getenv('POSTGRESQL_USER');
$pg_passwd = getenv('POSTGRESQL_PASSWORD');

$db = pg_connect("host=$pg_host port=5432  dbname=$pg_db user=$pg_user password=$pg_passwd");
}
?>
