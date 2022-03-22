<?php

//CRUD


class DBManager
{
    //CREATE
    public static function ajouterStagiaire(String $nom, String $prenom,  String $dateNaiss): void
    {
        //Chaine de connexion à la base de donnée
        $bdd = new PDO('mysql:host=localhost;dbname=tp_random;charset=utf8mb4', 'root', '');
        // On écrit notre requête
        $sql = "INSERT INTO `stagiaire`( `nom`, `prenom`, `dateNaiss`) VALUES (?,?,?)";
        //on fait un prépare car la requete n'est pas encore complete
        $stmt = $bdd->prepare($sql);
        // On exécute la requête
        $stmt->execute([$nom, $prenom, $dateNaiss]);
    }



    //READ
    public static function afficherStagiaire(): array
    {
        $bdd = new PDO('mysql:host=localhost;dbname=tp_random;charset=utf8mb4', 'root', '');
        $stmt = $bdd->prepare("SELECT * FROM stagiaire ");
        $stmt->execute();
        // On stocke le résultat dans un tableau
        $stagiaire = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $stagiaire;
    }



    //UPDATE
    public static function updateStagiaire(String $nom, String $prenom,  String $dateNaiss, String $nom_a_modif) : void
    {
        
        $bdd = new PDO('mysql:host=localhost;dbname=tp_random;charset=utf8mb4', 'root', '',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));

        // On écrit notre requête
        
        $sql = "UPDATE stagiaire SET nom =?, prenom =?, dateNaiss =? WHERE nom=?";
        

        $stmt = $bdd->prepare($sql);

        $stmt->execute([$nom,$prenom,$dateNaiss,$nom_a_modif]);
    }


    //DELETE
    public static function deleteStagiaire(String $nom) : void
    {
        $bdd = new PDO('mysql:host=localhost;dbname=tp_random;charset=utf8mb4', 'root', '',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        $sql = "DELETE FROM stagiaire  WHERE nom=?";
        $stmt = $bdd->prepare($sql);
        $stmt->execute([$nom]);
        
        
    }
}