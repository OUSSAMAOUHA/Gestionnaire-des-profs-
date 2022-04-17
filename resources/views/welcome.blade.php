<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Gestionnaire des profs</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->


        <style>
            @import url('https://fonts.googleapis.com/css?family=Josefin+Sans');

html, body{
  background: url('https://lh3.googleusercontent.com/QzmoI4DbybydhzZb_bruxfbnT8mo5FgdvatQd8a5CEDAkmN0iXYdHjvHmCJNjwyVYyXz2a8u8P8_Cs_isxENVTaTcly3ZKN797kscCSB0gpFs-iyWdXIMDJBAIO2WupUcZTawO0Ur9k8rsWkOz6arpwQMx-vQPGOjje-TddwG_nsIIpIp3l3Oub9S9v09tBAMSAOd8F-VqGBS0GtIdmvxlDAwK8T2do0pA6DiTX8lS3Vd9QjqKhg8By0ZNulKMCDld-WWu3rfSbWFOSyXGt3HDFzk4OYc4vP2_I7RGibTUlhAr-tud3jTNUZsscdgkzcI2BsLf0oBZTCXOqRBQAffVhisIOpTiAJK-g8ruiHS22VokfzJPO4fw0rmOMVE-PP7Eqk1ya_xMO4xuB6hq_2xqxisYrSY7xUUTudu1ZEPFR6KNPQAy1GdqyXDk4PjqK9kC8DPINgD6TPTVWg8zTQcUp5x5P4sWVwpA_0FJo6ZZ1FAbLHK0u272Im5j2oqZEdNRYdbIkH-h_ofN8H7142rL2r9WJAAfRadJztqtjVwtqdS8FYEjBRUSULDwVL6MWG-kkgh8WCg0iFNBvUJOWztBVaujQFnkyagqoTIH4HRaZM9OuW7YlRq66CEwojxLp0Iw-qz7Cw4owH-0feO2jBkhUt58jSj8g=w1136-h757-no');
  background-position: center left;
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  text-decoration: none;
  scroll-behavior: smooth;
  overflow-y: auto;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  min-width: 350px;
}

*{
  transition: .3s;
  font-family: 'Josefin Sans';
}


#Initial-Signature{
  position: absolute;
  height: 60px;
  width: 100px;
  color: white;
  text-align: center;
  font-size: 12px;
}

#Initial-Signature button{
  border: none;
  color: white;
  background: transparent;
  width: 100px;
  height: 60px;
  cursor: pointer;
}

#Initial-Signature:hover{
  animation: Signature-Wiggle 1s 1 ease-in-out;
  animation-fill-mode: forwards;
}

#Navbar{
  position: sticky;
  top: 0px;
  margin: 0 auto;
  left: 0;
  right: 0;
  height: 60px;
  width: 100%;
  max-width: 1346px;
  background-color: rgba(50,76,115,1);
  z-index: 3;
}

#Navbar-Drop-Down{
  position: relative;
  width: 125px;
  height: 0px;
  float: right;
  list-style: none;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  margin-top: 0;
}

.Navbar-Button{
  border: none;
  background-color: rgba(50,76,115,.8);
  cursor: pointer;
  color: rgba(255,255,255,1);
  font-size: 16px;
  padding: 0% 20px 0% 20px;
  height: 50px;
  width: 100%;
  transition: .2s;
}

.Navbar-Button:hover{
  background-color: rgba(101,130,180,1);
  transition: .2s;
}

#Projects-Nav-Link{
  position: absolute;
  display: inline-block;
  right: 125px;
  width: 125px;
}

#Projects-Nav-Link button{
  height: 60px;
  width: 100%;
}

#Drop-Down-Button{
  position: relative;
  width: 100%;
  height: 60px;
  z-index: 4;
  background: transparent;
}

#Drop-Down-Button span{
  position: absolute;
  top: 40px;
  left: 60px;
  font-size: 10px;
  opacity: 0;
}

.Drop-Down-Content{
  width: 100%;
  text-align: left;
  position: absolute;
  top: 0px;
  z-index: -1;
}
.Drop-Down-Content li{
  height: 0px;
  transition: .3s;
  opacity: 0;
}

#Navbar-Drop-Down:hover .Drop-Down-Content{
  display: block;
  top: 60px;
}

#Navbar-Drop-Down:hover #Drop-Down-Button span{
  opacity: 1;
  transition: .5s;
}

#Navbar-Drop-Down:hover .Drop-Down-Content li{
  height: 50px;
  opacity: 1;
  transition: .8s;
}

#Navbar-Drop-Down:hover, .Navbar-Button .Drop-Down-Button{
  background-color: rgba(101,130,180,1);
}

#Entire-Page-Container{
  position: relative;
  margin: 0 auto;
  width: 100%;
  height: 100%;
}

#Welcome-Page-Container{
  position: relative;
  display: flex;
  margin: 0 auto;
  height: 830px;
  width: 100%;
  max-width: 1346px;
  min-width: 300px;
  font-family: 'Josefin Sans';
  color: white;
  font-size: 30px;
  background-image: url(https://www.kezakoo.com/sup/wp-content/uploads/2019/02/ENSA-JADIDA-compus.jpg);
  background-position: top left;
  background-size: cover;
  background-repeat: no-repeat;
}

#Welcome-Page-Content{
  position: relative;
  top: 20%;
  height: 100%;
  width: 100%;
  margin: auto;
  padding-left: 50px;
}

#Welcome-Page-Content h1{
    line-height: 70px;
}

#Welcome-Page-Content p{
  position: relative;
  top: -35px;
}

#Explore-My-Work-Button{
  position: relative;
  top: -40px;
  width: 200px;
  height: 40px;
  color: rgba(255,255,255,.8);
  font-size: 15px;
  font-family: 'Josefin Sans';
  font-weight: 500;
  border: 0px solid white;
  border-radius: 3px;
  padding: 10px;
  cursor: pointer;
  background: rgba(50,76,115,.6);
  transition: .3s ;
}

#Explore-My-Work-Button:hover{ 
  background: rgba(50,76,115,1);
  color: rgba(255,255,255,1);
  transition: .6s;
}


#My-Projects-Container{
  position: relative;
  height: 800px;
  width: 100%;
  max-width: 1346px;
  min-width: 300px;
  background: rgba(210,210,210,1);
  margin: 0 auto;
  padding-top: 80px;
}

#Projects-Header{
  text-align: center;
  width: 625px;
  margin: 0 auto;
  margin-bottom: 5%;
  color: rgba(50,76,115,1);
}

#Project-Link-Container{
  display: grid;
  grid-template-rows: 330px 330px;
  grid-template-columns: 330px 330px;
  height: 99%;
  justify-items: center;
  justify-content: center;
  align-content: start;
}

.Project-Link{
  display: inline-block;
  position: relative;
  width: 300px;
  height: 300px;
  overflow: hidden;
  top: 0;
}

.Project-Img-Links{
  width: 100%;
  height: 100%;
  transition: .8s;
}

.Project-Link:hover .Project-Img-Links{
  transform: scale(1.08);
  transition: .8s;
}

.Project-Overlay-Container{
  position: absolute;
  overflow: hidden;
  right: 0;
  top: 75%;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  background: rgba(50,76,115,.9);
  transition: .5s;
  z-index: 1;
}

.Project-Overlay-Text{
  position: relative;
  width: 90%;
  margin: 0 auto;
  text-align: center;
  top: 0%;
  font-size: 20px;
  color:yellow;
  font-weight: 600;
}

.Project-Title-Br{
  display: none;
}

.Project-Overlay-Text span{
  font-size: 12px;
  font-weight: 100;
}

.Project-Link:hover .Project-Overlay-Container{
  z-index: 1;
  top: 0;
  transition: .5s;
}

.Project-Link:hover .Project-Overlay-Text{
  top: 105px;
  border: 2px solid white;
  border-width: 2px 0 2px 0;
  animation: Project-Title-Width-Grow 1s 1;
}

.Project-Link:hover .Project-Title-Br{
  display: block;
}

#Contact-Page-Container{
  position: relative;
  width: 100%;
  height: 20%;
  min-height: 175px;
  margin: 0 auto;
  min-width: 300px;
  max-width: 1346px;
  padding-top: 30px;
  padding-bottom: 40px;
  background: rgba(50,76,115,1);
  text-align: center;
  color: white;
  font-size: 13px;
}

#Contact-Page-Container a{
  color: white;
  transition: 0s;
}

#Contact-Page-Container a:hover{
  color: white;
  text-decoration: underline;
  transition: 0s;
}

#Contact-Links-Ul-Container{
  width: 50%;
  margin: 0 auto;
}

#Contact-Links-Ul{
  list-style: none;
  list-style-position: inside;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  padding: 0;
  margin: 0 auto;
}

.Contact-Links-Img{
  width: 60px;
  height: 60px;
  margin-left: 10px;
  margin-right: 10px;
  transition: .2s;
}

.Contact-Links-Img:hover{
  transform: scale(1.15);
  transition: .2s;
}

.Footer-And-Credits{
  margin-left: 20px;
  margin-right: 20px;
}

#Footer-hr{
  width: 70%;
  margin: 0 auto;
  margin-top: 20px;
  margin-bottom: 20px;
}

a{
  text-decoration: none;
}

#Desktop-br{
  display: block;
}

#Cellphone-br{
  display: none;
}

@keyframes Project-Title-Width-Grow{
  from {width: 45%;}
  to {width: 90%;}
}

@keyframes Signature-Wiggle{
  0% {transform: rotate(-360deg); }
  100% {transform: rotate(0deg);}
}

@media screen and (max-width:750px){

  #Welcome-Page-Container{
    background-image: url(https://www.kezakoo.com/sup/wp-content/uploads/2019/02/ENSA-JADIDA-compus.jpg);
    background-position: top center;
  }
  
  #Welcome-Page-Content{
    width: 100%;
    top: 4%;
    text-align: center;
    margin: 0 auto;
    font-size: 25px;
    padding: 0;
  }
  
  #Welcome-Page-Content h1{
    line-height: 55px;
  }
  
  #My-Projects-Container{
    height: 220%;
    min-height: 1550px;
    max-height: 1600px;
  }
  
  #Projects-Header{
    margin-bottom: 0;
    width: 50%;
    min-width: 300px;
    padding: 5px 10px 0 10px;
    line-height: 42px
  }
  
  #Project-Link-Container{
    grid-template-rows: 325px 330px 330px 330px;
    grid-template-columns: 500px;
    align-content: start;
    align-items: end;
    align-self: center;
  }
  
  #Contact-Page-Container{
    height: 35%;
    max-height: 200px;
  }
  
  #Desktop-br{
    display: none;
  }
  
  #Cellphone-br{
    display: block;
  }
  
}
      


        </style>
    </head>
    <body >
  
  

    <div id="Top-Of-Page"></div>
  
     <nav id="Navbar">
     @if (Route::has('login'))
         <div id="Initial-Signature">
           <a href="{{ url('/home') }}"><button><span style="font-size: 25px;"><strong>DOC</strong></span><br><span><em>ENSAJ</em></span></button></a>
         </div>
         @auth

         @else
       <div id="Projects-Nav-Link">
         <a href="{{ route('login') }}" ><button class="Navbar-Button">Connexion</button></a>
       </div>
       @if (Route::has('register'))
       <div id="Navbar-Drop-Down">
         <a href="{{ route('register') }}" ><button class="Navbar-Button">Créer un compte</button></a> 
       </div>
       @endif
                    @endauth
                    
            @endif

     </nav> 
      
    <div id="Entire-Page-Container">
     <div id="Welcome-Page-Container">
     <div id="Welcome-Page-Content">
       <h1>DR-ENSAJ<br id="Desktop-br"> (Doctorants Ensajistes)   </h1><p>Gestionnaire des doctorants de l'ecole nationaledes sciences appliquées d'ElJadida</p>
     </div>
     </div>
    </body>
</html>
