<?php

class Client
{
    private $id;
    private $first_name;
    private $last_name;
    private $address;
    private $zip;
    private $city;

    public function __construct($id, $first_name,$last_name, $address, $city, $zip){

        $this->id=$id;
        $this->first_name=$first_name;
        $this->last_name=$last_name;
        $this->address=$address;
        $this->city=$city;
        $this->zip=$zip;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getFirstName()
    {
        return $this->first_name;
    }

    public function getLastName()
    {
        return $this->last_name;
    }

    public function getAddress()
    {
        return $this->address;
    }

    public function getZip()
    {
        return $this->zip;
    }

    public function getCity()
    {
        return $this->city;
    }
}

Class ListeClients{

    private $liste = array();

    public function __construct(){

        $bdd = new PDO('mysql:host=localhost;dbname=bdd_dump;charset=utf8', 'root', 'root');
        $req = $bdd->query("SELECT * FROM customers");

        foreach ($req->fetchAll(PDO::FETCH_ASSOC) as $data) {
            $list = new Client($data["id"], $data["first_name"], $data["last_name"], $data["address"], $data["zip"], $data["city"]);
            array_push($this->liste, $list);

        }
    }

    public function getListe()
    {
        return $this->liste;
    }
}
