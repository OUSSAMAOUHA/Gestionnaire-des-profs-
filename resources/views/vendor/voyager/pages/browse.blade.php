@extends('voyager::master')
@section('content')
@if(Auth::user()->role_id == 1){

  <!DOCTYPE html>
<?php
  $con = mysqli_connect("localhost","root","","laravel");

?>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <title>Document</title>

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['professeurs', 'specialite'],
         <?php
         $sql = "SELECT distinct specialite, count(id)  FROM users GROUP BY specialite ";
         $fire = mysqli_query($con,$sql);
          while ($result = mysqli_fetch_assoc($fire)) {
            echo"['".$result['specialite']."',".$result['count(id)']."],";
          }

         ?>
        ]);

        var options = {
          title: 'Graphe professeurs par specialites'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    <style>
      .container{
    width: available;
    height: available;
}

.leftpane{
    width: 25%;
    min-width: 400px;
    height: available;
    min-height: 800px;
    float: left;

}

.middlepane{
   width: 25%;
   min-width: 400px;
   height: available;
   min-height: 650px;
   float: left;

}

.rightpane{
    width: available;
    height: available;
    position: relative;

}
    </style>



</head>
<body>
<
            <div class="leftpane"><div id="piechart"  ></div></div>

            <div class="middlepane"> <?php 
  $query = $con->query("
  SELECT count(DS)+count(DP)+count(DA),MONTHNAME(dateRecrutement) from `users` group BY MONTHNAME(dateRecrutement)
  ");

  foreach($query as $data)
  {
    $month[] = $data['MONTHNAME(dateRecrutement)'];
    $amount[] = $data['count(DS)+count(DP)+count(DA)'];
  }

?>


<div >
  <canvas id="myChart"></canvas>
</div>
 
<script>
  // === include 'setup' then 'config' above ===
  const labels = <?php echo json_encode($month) ?>;
  const data = {
    labels: labels,
    datasets: [{
      label: 'Graphe professeurs par dossiers',
      data: <?php echo json_encode($amount) ?>,
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(255, 159, 64, 0.2)',
        'rgba(255, 205, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(201, 203, 207, 0.2)'
      ],
      borderColor: [
        'rgb(255, 99, 132)',
        'rgb(255, 159, 64)',
        'rgb(255, 205, 86)',
        'rgb(75, 192, 192)',
        'rgb(54, 162, 235)',
        'rgb(153, 102, 255)',
        'rgb(201, 203, 207)'
      ],
      borderWidth: 1
    }]
  };

  const config = {
    type: 'bar',
    data: data,
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    },
  };

  var myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
</script>
        </div></div>
            <div class="rightpane"> <?php
  $conn=mysqli_connect("localhost","root","","laravel");
                                  if (!$conn){
                                        exit("erreur");
                                        
                                  }
                                 $sql="SELECT `id`,`name`, `DS`, `DP`, `DA`FROM `users` where id>1 and id!=3 and id!=2  ;";
                                 $mysqli_result = mysqli_query($conn, $sql) ;
                                  if(mysqli_num_rows($mysqli_result) > 0){
                                    $id = auth()->user()->id;
                                    $cont=1;
                                    
                                    
                                         echo "<form><table class='tab'>";
                                         while($rows= mysqli_fetch_assoc($mysqli_result)){
                                            echo "<input type='hidden' name='select".$cont."'value='".$rows['id']."'>";
                                            $cont++;
                                             echo "<tr><td >Nom professeur :  </td>
                                             <td><a class='prof' href='http://localhost:8000/admin/users/".$rows['id']."'>".$rows['name']."</a></td>
                                             <td><a class='prof' href='http://localhost:8000/admin/users/".$rows['id']."'>View Profil<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTFSZ1Ot3Dti6lwK3xQPy8DvIvwJC2shEE6w&usqp=CAU' width=100px/></a></td>
                                            </tr>";
                                           echo "<tr><td>";
                                        $c= str_replace('[{"download_link":"','',$rows["DS"]);
                                            $a=explode('"',$c);
                                           // echo $a[0];
                                            
                                          echo"<a href='http://localhost:8000/storage/".$a[0]."'>Dossier_scientifique</a>" ;
                                          echo "</td><td><a href='http://localhost:8000/storage/".$a[0]."'><img src='https://cdn-icons-png.flaticon.com/512/337/337946.png' width=100px/></a></td>
                                          <td><select name='select".$cont."'id='select1'> <option value='En_attente'>En Attente</option><option value='Validé'>Validé</option><option value='Refuse'>Refusé</option></td>";
                                          echo "<tr><td>";
                                          $cont++;
                                  $c= str_replace('[{"download_link":"','',$rows["DP"]);
                                    $a=explode('"',$c);
                                   // echo $a[0];
                                    
                                  echo"<a  href='http://localhost:8000/storage/".$a[0]."'>Dossier_Pedagogique<a/>" ;
                                  echo "</td><td><a  href='http://localhost:8000/storage/".$a[0]."'><img src='https://cdn-icons-png.flaticon.com/512/337/337946.png' width=100px/><a/></td>
                                  <td><select name='select".$cont."'id='select1'> <option value='En_attente'>En Attente</option><option value='Validé'>Validé</option><option value='Refuse'>Refusé</option></td>";                                  $cont++;
                                  echo "<tr><td>";
                          $c= str_replace('[{"download_link":"','',$rows["DA"]);
                            
                            $a=explode('"',$c);
                           // echo $a[0];
                            
                          echo"<a href='http://localhost:8000/storage/".$a[0]."'>Dossier_administratif</a>" ;
                          echo "</td><td><a href='http://localhost:8000/storage/".$a[0]."'><img src='https://cdn-icons-png.flaticon.com/512/337/337946.png' width=100px/></a></td>
                          <td><select name='select".$cont."'id='select1'> <option value='En_attente'>En Attente</option><option value='Validé'>Validé</option><option value='Refuse'>Refusé</option></td>";                          $cont++;
                  
                          }}
                              echo " <tr><td></td><td><button formaction='http://localhost:8000/admin/posts' class='changer'>submit</button></td><td>&#x2192;</td></tr>";  
                                $send=$cont-1;
                                echo "<input type='hidden' name='count'value='".$send."'>";
                                
                                       
                           ?>
                           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

                          
                           
                           <script>
                               $("#select1").change(function() {
            var l = document.getElementById("select1").value;
            console.log(l);})
           
                           </script>
                           <style>
 table {

  padding:40px;
  margin:auto;
  font-weight:bold;


}
.tab{
      border-collapse: collapse;
      margin: 0 auto; 
  
  }
  .tab th{
      background-color: #DADBDD;
  }
  
  .tab td, th{
      border : 1px solid black;
      padding: 10px 15px;
  }
  
  .tab tr:nth-child(2n){
      background-color: #E4F4F2
  ;
  }
  
  .tab tr:nth-child(2n + 1){
      background-color: #C4D7ED;
  }

  legend{
       font-size: 20px;
       font-weight: bold;
       color: #183152;
      
   }
  

  .changer {
          color: #FFC107;
          font-weight: bold;
          margin:40px;


      }
  .prof{
    color:black;
  }

</style>
</div>
</div>


</body>
</html>




















@else
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "laravel";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$id=auth()->user()->id; 
$sql = "SELECT * FROM etat where idprof=".$id."";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<table border=0 class='tab'><tbody>";
    echo "<legend>Etat des dossiers</legend><tr><td><img src='https://st2.depositphotos.com/5266903/9115/v/450/depositphotos_91151212-stock-illustration-certified-flat-icon.jpg' width=100px/></td><td> Dossier Scientifique: </td><td class='etatd'>" . $row["etat1"]. "</td></tr>
    <tr><td><img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWL7OjuZ5LPG3P0ybqocFuCHOE6EU5w-gaj2HowND3peUOXqRSY2PV_mZj-32VJWQYYBc&usqp=CAU' width=100px/></td><td>  Dossier Pedagogique: </td><td class='etatd'>" . $row["etat2"]. "</td></tr>
    <tr><td><img src='https://cdn.iconscout.com/icon/premium/png-256-thumb/dossier-3201828-2663174.png' width=100px/></td><td>  Dossier Administratif: </td><td class='etatd'>" . $row["etat3"]. "</td></tr>";
    echo "</tbody></table>";
  }
} else {
  echo"<table border=0 class='tab'><tbody>";
  echo "<legend>Etat des dossiers</legend><tr><td><img src='https://st2.depositphotos.com/5266903/9115/v/450/depositphotos_91151212-stock-illustration-certified-flat-icon.jpg' width=100px/></td><td> Dossier Scientifique: </td><td style='color:red'>En Attante</td></tr>
  <tr><td><img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWL7OjuZ5LPG3P0ybqocFuCHOE6EU5w-gaj2HowND3peUOXqRSY2PV_mZj-32VJWQYYBc&usqp=CAU' width=100px/></td><td>  Dossier Pedagogique: </td><td style='color:red'>En Attante</td></tr>
  <tr><td><img src='https://cdn.iconscout.com/icon/premium/png-256-thumb/dossier-3201828-2663174.png' width=100px/></td><td>  Dossier Administratif: </td><td style='color:red'>En Attante</td></tr>";
  echo "</tbody></table>";;
}
echo "<center><button value='Modifier les dossiers' class='changer' ><a href='http://localhost:8000/admin/profile'>changer les dossiers</a></button></center>";

$conn->close();
?>

<style>
 table {
  font-size: 200%;
  padding:40px;
  margin:auto;
  font-weight:bold;


}
.tab{
      border-collapse: collapse;
      margin: 0 auto; 
  
  }
  .tab th{
      background-color: #DADBDD;
  }
  
  .tab td, th{
      border : 1px solid black;
      padding: 10px 15px;
  }
  
  .tab tr:nth-child(2n){
      background-color: #E4F4F2
  ;
  }
  
  .tab tr:nth-child(2n + 1){
      background-color: #C4D7ED;
  }

  legend{
       font-size: 20px;
       font-weight: bold;
       color: #183152;
      
   }
  

  .changer {
          color: #FFC107;
          font-weight: bold;
          margin:40px;


      }
  .etatd{
    color:red;
  }

</style>}
@endif
@endsection