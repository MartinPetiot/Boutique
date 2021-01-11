<?php

class Article {
    private $id;
    private $name;
    private $description;
    private $price;
    private $picture;
    private $weight;
    private $quantity;
    private $available;

    public function __construct($id,$name,$description,$available,$picture,$weight,$price,$quantity){
        $this->id=$id;
        $this->name=$name;
        $this->description=$description;
        $this->price=$price;
        $this->picture=$picture;
        $this->weight=$weight;
        $this->quantity=$quantity;
        $this->available=$available;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getName()
    {
        return $this->name;
    }
    public function getPrice()
    {
        return $this->price;
    }
    public function getAvailable()
    {
        return $this->available;
    }
    public function getPicture()
    {
        return $this->picture;
    }
    public function getWeight()
    {
        return $this->weight;
    }
    public function getQuantity()
    {
        return $this->quantity;
    }
}

