<?php
 include 'db.php';
 $db =  new DB();
 $req = "insert into delay(id, delay) value(null, :delay) ";
 if(!empty($_POST)){
    $db->myQuery($req, ['delay' => $_POST['delay']]);
    header("location:testdistance.php");
 }

 
