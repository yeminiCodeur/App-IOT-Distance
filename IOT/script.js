$(document).ready(function() {
  setTimeout(function (){
     $.ajax({
                url: 'http://localhost:82/IOT/delette.php',
                type: 'GET',
                async: true,
                success: function () {
                      
                },
                error: function (data) {

                }
            });
   }, 5000
);

 setInterval(function ()
 {
     $.ajax({
                url: 'http://localhost:82/IOT/testdistance.php',
                type: 'GET',
                async: true,
                success: function () {
                      
                },
                error: function (data) {

                }
            });
   }, 1000
);


    setTimeout(function(){
     $.ajax({
                url: 'http://localhost:82/IOT/verifierApres10Seconde.php',
                type: 'GET',
                async: true,
                success: function (data) {
                    console.log(data);
                },
                error: function (data) {

                }
            });
   }, 5000
);

 
});