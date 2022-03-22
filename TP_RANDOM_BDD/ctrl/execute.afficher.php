<?php
session_start();
include "../modele/DBManager.class.php";
$tab = DBManager::afficherStagiaire();

$_SESSION["tab"] = $tab;


header("location:../views/afficherStagiaire.php");

?>