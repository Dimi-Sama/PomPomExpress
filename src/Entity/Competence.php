<?php

namespace App\Entity;

use App\Repository\CompetenceRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CompetenceRepository::class)]
class Competence
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToOne(inversedBy: 'competence', cascade: ['persist', 'remove'])]
    private ?Personnage $personage = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(length: 2500)]
    private ?string $description = null;
    
    public function __toString(){
        return $this->nom;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPersonage(): ?Personnage
    {
        return $this->personage;
    }

    public function setPersonage(?Personnage $personage): static
    {
        $this->personage = $personage;

        return $this;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }
}
