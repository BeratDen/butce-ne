<?php
session_start();
require_once 'baglan.php';



if (isset($_POST['income_add'])) {
	$sql_income=$db->prepare("INSERT INTO income SET
	income_price=:income_price,
	income_category=:income_category,
	income_date=:income_date
	");

$sql_insert=$sql_income->execute(
	[
	'income_price' => $_POST['income_price'],
	'income_category' => $_POST['income_category'],
	'income_date' => $_POST['income_date']
	]
);


if ($sql_insert) {
	$_SESSION['sql_income_insert']="ok";
	Header("Location:../income-add.php");
	exit;
} else {
	$_SESSION['sql_income_insert']="no";
	Header("Location:../income-add.php");
	exit;
}
}
