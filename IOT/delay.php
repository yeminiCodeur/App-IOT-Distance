<?php
   include 'db.php';
   //effacer le continue du fichier
   //$file = file_put_contents('alerts.txt', '');
   $db =  new DB();
 $req = "select delay from delay ORDER BY id DESC LIMIT 1";
   $resultat= $db->myQuery($req);
 if( $r = $resultat->fetch()){
 	 echo $r->delay;
  }