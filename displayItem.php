<?php
$valide = " ";
if (!empty($_POST["nom"]) AND !empty($_POST["photo"]) AND $_POST["prix"]>0) {
$valide = "le produit est bon " . htmlspecialchars($_POST["nom"]) . " " .  htmlspecialchars($_POST["prix"]) . " € : " . "<br>" . "<img src=".$_POST['photo']." >" ;
}
else {
    header("Location: http://localhost/php5/addItem.php?iserror=true");
    exit();

}
echo $valide;
?>


