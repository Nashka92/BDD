<?php
include "../modele/DBManager.class.php";

$nom = $_POST["nom"];
$prenom = $_POST["prenom"];
$dateNaiss =$_POST["dateNaiss"];

DBManager::ajouterStagiaire($nom, $prenom, $dateNaiss);

header("location:../ctrl/execute.afficher.php");
?>