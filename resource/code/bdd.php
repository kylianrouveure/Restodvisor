<?php
	try
	{
		$host_name = '127.0.0.1';
        $database = 'restodvisor';
        $user_name = 'root';
		$password = "";
		
		$bdd = new PDO("mysql:host=$host_name;port=3306;dbname=$database", $user_name, $password);
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
	}
	catch(Exception $e)
	{
		die('ERREUR : '.$e->getMessage());
	}
?>