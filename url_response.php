<?php
//diretório do projeto
if(!defined('PROJECT_DIR')){
	define('PROJECT_DIR', 'poupemais');
}
	
// diretório da aplicacao
if(!defined('APPLICATION_DIR')){
	define('APPLICATION_DIR', 'app');
}

// URL enviado
if(!defined('REQUEST_URI')){	
	define('REQUEST_URI'	,str_replace('/'.PROJECT_DIR,'',$_SERVER['REQUEST_URI']));
}

function url_response($urlpatterns){
	foreach($urlpatterns as $pcre=>$app){
		if(preg_match("@^{$pcre}$@",REQUEST_URI,$_GET)){
			include(APPLICATION_DIR.'/'.$app);
			exit();
		}
	}
	include(APPLICATION_DIR.'/404.php');
	exit();
}
?>