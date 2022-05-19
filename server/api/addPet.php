<?php
    include 'db_connection.php';
    header("Access-Control-Allow-Origin: * ");
    header("Access-Control-Allow-Headers: * ");

    $request_body = file_get_contents('php://input');
    $data = json_decode($request_body);

    $names = $data -> petName;
    $species = $data -> species;
    $gender = $data -> gender;
    $age= $data -> age;
    $microId = $data -> microId;
    $owner = $data -> owner;
    $ownerId= $data -> ownerId;
    $origin = $data -> origin;
    $dest = $data -> destination;

    $sql = "INSERT INTO petInfo (id, name, species, gender, age, MicroChipId, OwnerName, OwnerID, Origin, Destination) VALUES (NULL, '$name', '$species', '$gender', '$age', '$microId', '$owner', '$ownerId', '$origin', '$dest');";
    $result = mysqli_query($connection, $sql);

    if(!$result){
        echo ("Problem!". mysqli_error($connection));
    } else{
        echo("All is well in petville");
    }

?>