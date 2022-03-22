<?php
session_start();
include "../modele/DBManager.class.php";


$nom = $_POST["nom"];
$prenom = $_POST["prenom"];
$dateNaiss =$_POST["dateNaiss"];
$nom_a_modif = $_POST["nom_a_modif"];

DBManager :: updateStagiaire($nom,$prenom,$dateNaiss,$nom_a_modif);

header("location:../ctrl/execute.afficher.php");


?>