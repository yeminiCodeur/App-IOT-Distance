<?php
   include 'db.php';
   //effacer le continue du fichier
   //$file = file_put_contents('alerts.txt', '');
   $db =  new DB();
   $req = "select date as dernierseconde from tp  where date > (now() - INTERVAL 10 SECOND)";
   $resultat= $db->myQuery($req);
   if( $r = $resultat->fetch()){
      var_dump($r->dernierseconde); 
   }
   
 ?>

 
