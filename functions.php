
<?php
include 'Catalogue.php';
$affichage = new Catalogue();
function displayArticle($article){
    echo $article->getName();
    }

function displayCat($cat){
    foreach ($cat as $data)
        displayArticle($data);
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
displayCat($affichage->getCatalogue());
?>
</body>
</html>