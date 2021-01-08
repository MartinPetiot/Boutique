<html lang="en">
<?php

function displayItem($prix, $nom, $photo){
    echo ?> <p> Notre article au prix de </p><?php $prix;
    echo $nom;
    echo $photo;
}
    foreach ($catalogue as $article) {
        displayItem($article["prix"], $article["nom"], $article["image"]);
}
?>
</html>

