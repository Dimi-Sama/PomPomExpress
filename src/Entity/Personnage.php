<?php

namespace App\Entity;

use App\Repository\PersonnageRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PersonnageRepository::class)]
class Personnage
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\ManyToOne(inversedBy: 'personnages')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Attribut $attribut = null;

    #[ORM\ManyToOne(inversedBy: 'personnages')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Voie $voie = null;

    #[ORM\Column]
    private ?int $etoile = null;

    #[ORM\OneToOne(mappedBy: 'personage', cascade: ['persist', 'remove'])]
    private ?Competence $competence = null;

    #[ORM\OneToOne(mappedBy: 'personnage', cascade: ['persist', 'remove'])]
    private ?Ultime $ultime = null;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getAttribut(): ?Attribut
    {
        return $this->attribut;
    }

    public function setAttribut(?Attribut $attribut): static
    {
        $this->attribut = $attribut;

        return $this;
    }

    public function getVoie(): ?Voie
    {
        return $this->voie;
    }

    public function setVoie(?Voie $voie): static
    {
        $this->voie = $voie;

        return $this;
    }

    public function getEtoile(): ?int
    {
        return $this->etoile;
    }

    public function setEtoile(int $etoile): static
    {
        $this->etoile = $etoile;

        return $this;
    }

    public function getCompetence(): ?Competence
    {
        return $this->competence;
    }

    public function setCompetence(?Competence $competence): static
    {
        // unset the owning side of the relation if necessary
        if ($competence === null && $this->competence !== null) {
            $this->competence->setPersonage(null);
        }

        // set the owning side of the relation if necessary
        if ($competence !== null && $competence->getPersonage() !== $this) {
            $competence->setPersonage($this);
        }

        $this->competence = $competence;

        return $this;
    }

    public function getUltime(): ?Ultime
    {
        return $this->ultime;
    }

    public function setUltime(?Ultime $ultime): static
    {
        // unset the owning side of the relation if necessary
        if ($ultime === null && $this->ultime !== null) {
            $this->ultime->setPersonnage(null);
        }

        // set the owning side of the relation if necessary
        if ($ultime !== null && $ultime->getPersonnage() !== $this) {
            $ultime->setPersonnage($this);
        }

        $this->ultime = $ultime;

        return $this;
    }
}
