<?php
session_start();
$_SESSION['countTodeleteFile'] = 0;
   include 'db.php';
  
   $db =  new DB();
   $req = "select distance, count(id) as maxi from tp";
   $resultat= $db->myQuery($req);
   if( $r = $resultat->fetch()){

      if($r->maxi >= 10 )
      {
         $_SESSION['countTodeleteFile']++;
         $req = "select date, distance from tp";
         $resultat= $db->myQuery($req);
        foreach ($resultat->fetchAll() as $key => $value) {
         if($value->distance < 100 ){
         $file = fopen('alerts.txt', 'a+');
         fgetc($file);
         fseek($file, 0);
         fputs($file,  'distance:' . $value->distance . ':'.  $value->date . 'statut:DI' ) ;
         fclose($file);
       }
      }
         $req = "truncate table tp";
         $resultat= $db->myQuery($req);
      }
   }

   if($_SESSION['countTodeleteFile'] === 20){
     //effacer le continue du fichier
     $file = file_put_contents('alerts.txt', '');
   }

 ?>

