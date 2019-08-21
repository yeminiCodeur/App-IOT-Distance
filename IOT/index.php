<!DOCTYPE html>
<html>
<head>
<META  HTTP-EQUIV = "refresh"  CONTENT = "5" >
    <title>jj</title>
    <script type="text/javascript" src="jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
</head>
<body>
<div class="col-md-6 offset-3">
<div class="card">
<div class="card-body">
<?php
include 'db.php';
$nombreAlert=0;
$req = "select date, distance from tp ORDER BY id DESC LIMIT 1";
 $db =  new DB();
 
$resultat = $db->myQuery($req);
echo "<h5 class=\"text-center text-primary\">Detection d'intrusion: </h5>";
echo "<table class=\" table borderd table-hover\">";
echo "<a href=\"distance.html\" class=\"btn btn-primary btn-sm\"  >Parametre</a>";
echo  "<tr><th>Message </th>  <th>  date reception</th><th>Statut</th></tr>" ;
try {
    if($value = $resultat->fetch()) {
    if($value->distance < 100 )
     {        
      echo "<tr><td style=color:red;><strong><span class=\" text-danger fa fa-home\"></span> Porte est Ouverte.</strong></td><td>". 
      "<span class=\" text-danger fa fa-clock-o\"></span>  ".$value->date . 
             "</td> <td ><span class=\"text-danger fa fa-unlock\"></span></td></tr>"; 
        $db->sendMail("admin@gmail.com","Alerte.","La porte ouverte, une nouvelle intrusion est detecté.");
     }
    if($value->distance > 100 or $value === false)
    {
      echo "<tr><td style=color:green;><strong><span class=\" text-success fa fa-home\"></span> Porte ferme.</strong></td><td>". 
      "<span class=\" text-success fa fa-clock-o\"></span>  ".$value->date . 
             "</td> <td ><span class=\" text-success fa fa-lock\"></span></td></tr>";   
    }
  }
 } catch (Exception $e) {
   var_dump($e);
}
?>
 
</div>
</div></div>
</body>
</html>














