<?php

class Article {
    private $nom;
    private $description;
    private $prix;
    private $image;
    private $poids;
    private $stock;
    private $disponible;

    public function __construct($nom,$description,$disponible,$image,$poids,$prix,$stock){
        $this->nom=$nom;
        $this->description=$description;
        $this->prix=$prix;
        $this->image=$image;
        $this->poids=$poids;
        $this->stock=$stock;
        $this->disponible=$disponible;
    }
    public function getDescription()
    {
        return $this->description;
    }

    public function getNom()
    {
        return $this->nom;
    }
    public function getPrix()
    {
        return $this->prix;
    }
    public function getDisponible()
    {
        return $this->disponible;
    }
    public function getImage()
    {
        return $this->image;
    }
    public function getPoids()
    {
        return $this->poids;
    }
    public function getStock()
    {
        return $this->stock;
    }
    public function displayArticle(Article $article){

    echo $this->image,$this->prix,$this->description,$this->disponible,$this->nom,$this->poids,$this->stock;

    }
}

