<?php
session_start();

include "../modele/DBManager.class.php";

$nom = $_POST["nom"];

DBManager :: deleteStagiaire($nom);

header("location:../ctrl/execute.afficher.php");

?>