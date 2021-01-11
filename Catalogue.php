<?php
include ("Article.php");


;
class Catalogue
{

    private $catalogue = array();

    public function __construct()
    {

        $bdd = new PDO('mysql:host=localhost;dbname=bdd_dump;charset=utf8', 'Petiotso', 'J28m11a91');
        $req = $bdd->query("SELECT * FROM products");
        $req->execute();
        foreach ($req->fetchall(PDO::FETCH_ASSOC) as $data) {
            $cat = new Article($data["id"], $data["name"], $data["available"], $data["description"], $data["price"], $data["picture"], $data["weight"], $data["quantity"]);
            array_push($this->catalogue, $data);
        }
    }

    public function getCatalogue()
    {
        return $this->catalogue;
    }
}


