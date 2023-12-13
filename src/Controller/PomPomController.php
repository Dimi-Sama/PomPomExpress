<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\AttributRepository;
use App\Repository\PersonnageRepository;
use App\Entity\Article;
use App\Entity\Personnage;
use App\Repository\VoieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PomPomController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->render('pom_pom/index.html.twig', [
            'controller_name' => 'PomPomController',
        ]);
    }

    #[Route('/wiki/personnage', name: 'public_personnage')]
    public function perso(PersonnageRepository $personnageRepository, AttributRepository $attributRepository, VoieRepository $voieRepository): Response
    {
        $inventoryCharacter = "";
        if (isset($_COOKIE["UserOwnedCharacters"])) {
            $inventoryCharacter = unserialize($_COOKIE["UserOwnedCharacters"]);
        }
        return $this->render('pom_pom/complete.html.twig', [
            'controller_name' => 'PomPomController',
            'personnages' => $personnageRepository->findAll(),
            'attributs' => $attributRepository->findAll(),
            'voies' => $voieRepository->findAll(),
            'inventairesPersonnage' => $inventoryCharacter
        ]);
    }
    #[Route('wiki/article', name: 'public_article', methods: ['GET'])]
    public function article(ArticleRepository $articleRepository): Response
    {
        return $this->render('pom_pom/article.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }
    #[Route('wiki/article/{id}', name: 'public_article_show', methods: ['GET'])]
    public function showarticle(Article $article): Response
    {
        return $this->render('pom_pom/article_show.html.twig', [
            'article' => $article,
        ]);
    }
    #[Route('/wiki/personnage/{id}', name: 'app_personnage_affichage', methods: ['GET', 'POST'])]
    public function show(Personnage $personnage): Response
    {
        $inventoryCharacter = "";
        if (isset($_COOKIE["UserOwnedCharacters"])) {
            $inventoryCharacter = unserialize($_COOKIE["UserOwnedCharacters"]);
        }
        return $this->render('personnage/affichage.html.twig', [
            'personnage' => $personnage,
            'inventairesPersonnage' => $inventoryCharacter
        ]);
    }
    #[Route('/wiki/ajouterDansInventraire', name: 'app_personnage_user_ajouter', methods: ['GET', 'POST'])]
    public function addToAccount(): Response
    {
        if (isset($_GET["addCharacter"])) {
            if (!isset($_COOKIE["UserOwnedCharacters"])) {
                setcookie("UserOwnedCharacters", serialize([]));
            } else {
                $getOwnedCharacter = unserialize($_COOKIE["UserOwnedCharacters"]);
                array_push($getOwnedCharacter, $_GET["addCharacter"]);
                setcookie("UserOwnedCharacters", serialize($getOwnedCharacter));
            }

            return $this->redirectToRoute('public_personnage');
        } else {
            return $this->redirectToRoute('public_personnage');
        }
        return $this->redirectToRoute('public_personnage');
    }
    #[Route('/wiki/SupprimerDansInventraire', name: 'app_personnage_user_supprimer', methods: ['GET', 'POST'])]
    public function deleteToAccount(): Response
    {
        if (isset($_GET["addCharacter"])) {
            if (!isset($_COOKIE["UserOwnedCharacters"])) {
                setcookie("UserOwnedCharacters", serialize([]));
            } else {
                $getOwnedCharacter = unserialize($_COOKIE["UserOwnedCharacters"]);
                $i = 0;
                foreach ($getOwnedCharacter as $oneOwnedCharacter) {
                    if ($oneOwnedCharacter != $_GET["addCharacter"]) {
                        $i++;
                    } else {
                        unset($getOwnedCharacter[$i]);
                    }
                }
                setcookie("UserOwnedCharacters", serialize($getOwnedCharacter));
            }

            return $this->redirectToRoute('public_personnage');
        } else {
            return $this->redirectToRoute('public_personnage');
        }
        return $this->redirectToRoute('public_personnage');
    }
}
