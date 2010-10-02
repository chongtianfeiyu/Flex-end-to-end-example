<?php

require_once "Zend_Amf.php";
require_once "MyDAO.php";
require_once "MyVO.php";

$server = new Zend_Amf_Server();

$server -> setClass( "MyDAO" );//the source of your RemoteObjects in Services.mxml
$server -> setClassMap( "MyVO", "MyVO" );//1:1 with AS3's MyVO

echo( $server -> handle() );

?>