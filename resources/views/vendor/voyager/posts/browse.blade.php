@extends('voyager::master')
@section('content')

<style>
    *, *:after, *:before {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
body {
  background: #467fae;
  font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', 'Helvetica', 'Arial', 'Lucida Grande', sans-serif;
}
@keyframes fade {
  from {
    opacity: 0;
    transform: translate(-50%, -50%) scale(0.8);
  }
  to {
    opacity: 1;
    transform: translate(-50%, -50%) scale(1);
  }
}
.confirm {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 80%;
  min-width: 600px;
  max-width: 800px;
  height: 600px;
  background: #E2E2E2;
  border-radius: 10px;
  padding: 0;
  margin: 0;
  border-top: 1px solid white;
  animation: fade 1s ease 1 forwards;
}
.confirm h1 {
  text-align: center;
  font-size: 1.2rem;
  margin: 1.5rem 1rem 0.5rem;
}
.confirm p {
  text-align: center;
  font-size: 1rem;
  margin: 0 2rem 4.5rem;
}
.confirm button {
  background: transparent;
  border: none;
  color: #1678E5;
  height: 3rem;
  font-size: 1rem;
  width: 100%;
  position: absolute;
  bottom: 0;
  cursor: pointer;
  padding-top: 10px;
}
.confirm button:nth-of-type(1) {
  border-top: 1px solid #B4B4B4;
  border-right: 1px solid #B4B4B4;
  left: 0;
  border-radius: 0 0 0 10px;
}
.confirm button:nth-of-type(2) {
  border-top: 1px solid #B4B4B4;
  right: 0;
  border-radius: 0 0 10px 0;
}
.confirm button:focus,
.confirm button:hover {
  font-weight: bold;
  background: #EFEFEF;
}
.confirm button:active {
  background: #D6D6D6;
}
</style>

<?php
 $conn=mysqli_connect("localhost","root","","laravel");
 $sql="DELETE FROM `etat` WHERE 1;";
 $mysqli_result = mysqli_query($conn, $sql) ;
$l=$_GET['count'];
for($i=1;$i<=$l;$i+=4){
    
    $l1=$_GET['select'.$i.''];
    $c=$i+1;
    $l11=$_GET['select'.$c.''];
    $c=$c+1;
    $l2=$_GET['select'.$c.''];
    $c=$c+1;
    $l3=$_GET['select'.$c.''];
    
   
    if (!$conn){
        exit("erreur");
        
    }
    $sql="INSERT INTO `etat`(`id`,`idprof`, `ETAT1`, `ETAT2`, `ETAT3`) VALUES (null,'.$l1.','.$l11.','.$l2.','.$l3 .')";
    $mysqli_result = mysqli_query($conn, $sql) ;
}


echo "<form><p> </p>";
echo"<div class='confirm'>
<h1>Confirmer l'envoi des etats</h1>
<p>Clicker pour confirmer</p>
<center><img src='https://static.vecteezy.com/system/resources/thumbnails/000/572/566/small_2x/vector61-185-01.jpg'></center>
<button formaction='http://localhost:8000/admin/pages' >submit</button>"

?>
@endsection