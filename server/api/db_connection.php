<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpassword = 'root';
    $dbName = 'pets';
    $connection = new mysqli ($dbhost, $dbuser, $dbpassword, $dbName);

    if($mysqli -> $connect_error){
        echo ($mysqli -> $connect_error);
    }
?>