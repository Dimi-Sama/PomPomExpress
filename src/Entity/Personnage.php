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

    #[ORM\OneToOne(mappedBy: 'personnage', cascade: ['persist', 'remove'])]
    private ?Normale $normale = null;

    #[ORM\OneToOne(mappedBy: 'personnage', cascade: ['persist', 'remove'])]
    private ?Talent $talent = null;

    #[ORM\OneToOne(mappedBy: 'personnage', cascade: ['persist', 'remove'])]
    private ?Technique $technique = null;

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

    public function getNormale(): ?Normale
    {
        return $this->normale;
    }

    public function setNormale(Normale $normale): static
    {
        // set the owning side of the relation if necessary
        if ($normale->getPersonnage() !== $this) {
            $normale->setPersonnage($this);
        }

        $this->normale = $normale;

        return $this;
    }

    public function getTalent(): ?Talent
    {
        return $this->talent;
    }

    public function setTalent(Talent $talent): static
    {
        // set the owning side of the relation if necessary
        if ($talent->getPersonnage() !== $this) {
            $talent->setPersonnage($this);
        }

        $this->talent = $talent;

        return $this;
    }

    public function getTechnique(): ?Technique
    {
        return $this->technique;
    }

    public function setTechnique(Technique $technique): static
    {
        // set the owning side of the relation if necessary
        if ($technique->getPersonnage() !== $this) {
            $technique->setPersonnage($this);
        }

        $this->technique = $technique;

        return $this;
    }
}
