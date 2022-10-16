<?php
session_start();
require_once 'baglan.php';



if (isset($_POST['income_add'])) {
	$sql_income = $db->prepare("INSERT INTO income SET
	income_price=:income_price,
	income_category=:income_category,
	income_date=:income_date
	");

	$sql_insert = $sql_income->execute(
		[
			'income_price' => $_POST['income_price'],
			'income_category' => $_POST['income_category'],
			'income_date' => $_POST['income_date']
		]
	);


	if ($sql_insert) {
		$_SESSION['sql_income_insert'] = true;
		Header("Location:../income-add.php?view=2");
		exit;
	} else {
		$_SESSION['sql_income_insert'] = false;
		Header("Location:../income-add.php?view=2");
		exit;
	}
}

if (isset($_POST['expenses_add'])) {
	$sql_income = $db->prepare("INSERT INTO expenses SET
	expenses_price=:expenses_price,
	expenses_category=:expenses_category,
	expenses_date=:expenses_date
	");

	$sql_insert = $sql_income->execute(
		[
			'expenses_price' => $_POST['expenses_price'],
			'expenses_category' => $_POST['expenses_category'],
			'expenses_date' => $_POST['expenses_date']
		]
	);


	if ($sql_insert) {
		$_SESSION['sql_expenses_insert'] = true;
		Header("Location:../expenses-add.php?view=2");
		exit;
	} else {
		$_SESSION['sql_expenses_insert'] = false;
		Header("Location:../expenses-add.php?view=2");
		exit;
	}
}
