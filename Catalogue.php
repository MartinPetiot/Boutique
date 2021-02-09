<?php
include_once ("Article.php");


;
class Catalogue
{

    private $catalogue = array();

    public function __construct()
    {

        $bdd = new PDO('mysql:host=localhost;dbname=bdd_dump;charset=utf8', 'root', 'root');
        $req = $bdd->query("SELECT * FROM products");

        foreach ($req->fetchAll(PDO::FETCH_ASSOC) as $data) {
            if (isset($data["women"])) {
                $cat = new Women($data["id"], $data["name"], $data["available"],$data["women"],$data["description"], $data["price"], $data["picture"], $data["weight"], $data["quantity"]);
                array_push($this->catalogue, $cat);
            }

            else {
                $cat = new Article($data["id"], $data["name"], $data["available"], $data["description"], $data["price"], $data["picture"], $data["weight"], $data["quantity"]);
                array_push($this->catalogue, $cat);
            }

            //echo ("<pre>"); var_dump($cat); echo ("</pre>"); die();
            }

    }

    public function getCatalogue()
    {
        return $this->catalogue;
    }
}


