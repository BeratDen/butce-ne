<?php
error_reporting(E_ALL);
try {
	$db = new PDO("mysql:host=localhost;dbname=nebutce;charset=utf8", 'root', 'Courseapp_123');
	// echo "bağlantı başarılı";
} catch (PDOExpception $e) {
	echo $e->getMessage();
}
