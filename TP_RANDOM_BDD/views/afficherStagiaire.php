<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>affichage</title>

</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" aria-current="page" href="#">Home</a>
                    <a class="nav-link active" href="#">Afficher Stagiaire</a>
                    <a class="nav-link" href="../views/ajouterStagiare.html">Ajouter Stagiaire</a>
                    <a class="nav-link" href="../views/modifierStagiaire.html">Modifier Stagiaire</a>
                    <a class="nav-link" href="../views/supprimerStagiaire.html">Supprimer Stagiaire</a>
                </div>
            </div>
        </div>
    </nav>


    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom</th>
                <th scope="col">Prénom</th>
                <th scope="col">Date de naissance</th>
            </tr>
        </thead>

        <tbody>
            <?php
            for ($i = 0; $i < sizeof($_SESSION["tab"]); $i++) {
                echo
                '<tr>
                <th scope=' . "row" . '>' . $_SESSION["tab"][$i]["ID"] . '</th>
                <td>' . $_SESSION["tab"][$i]["nom"] . '</td>
                <td>' . $_SESSION["tab"][$i]["prenom"] . '</td>
                <td>' . $_SESSION["tab"][$i]["dateNaiss"] . '</td>
            </tr>';
            } ?>
        </tbody>
    </table>


















    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>