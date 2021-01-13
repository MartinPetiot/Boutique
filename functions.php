
<?php
include_once 'Catalogue.php';
include_once 'Article.php';
include_once 'Clients.php';

$affichage = new Catalogue();
$affichage2 = new ListeClients();
//echo $article->getWomen(); echo ("<pre>"); var_dump($article->getWomen()); echo ("</pre>"); die();


function displayArticle(Article $article){

    echo $article->getId() . "<br>";
    echo $article->getName() . "<br>";
    echo $article->getDescription() . "<br>";
    echo $article->getPrice() . "<br>";
    echo $article->getAvailable() . "<br>";
    echo $article->getPicture() . "<br>";
    echo $article->getWeight() . "<br>";
    echo $article->getQuantity() . "<br>";
if (get_class($article) == 'Women'){
    echo $article->getWomen() . "<br>";

}
    }


function displayCat(Catalogue $affichage){
    foreach ($affichage->getCatalogue() as $article)
    displayArticle($article). "<br>";
    }

function displayClient(Client $client){
    echo $client->getId();
    echo $client->getFirstName();
    echo $client->getLastName();
    echo $client->getAddress();
    echo $client->getZip();
    echo $client->getCity();
}

function displayListeClients(ListeClients $affichage2){
    foreach ($affichage2->getListe() as $client)
        displayClient($client);

}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<?php
echo displayCat($affichage) . "<br>";

?>
</body>
</html>