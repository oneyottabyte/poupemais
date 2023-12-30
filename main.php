<?php
include('url_response.php'); 
$urlpatterns = array(
	'/'=>'index.php',
	'/cadastro'=>'lead.php',
	'/add'=>'cadastro.php',
	'/sucesso/(?P<codigo>\S+)'=>'sucesso.php',
	'/not-found'=>'404.php',
	'/verify'=>'verifica.php',
);
url_response($urlpatterns);
?>