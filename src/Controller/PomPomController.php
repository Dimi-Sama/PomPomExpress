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
        return $this->render('pom_pom/complete.html.twig', [
            'controller_name' => 'PomPomController',
            'personnages' => $personnageRepository->findAll(),
            'attributs' => $attributRepository->findAll(),
            'voies' => $voieRepository->findAll(),
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
        return $this->render('personnage/affichage.html.twig', [
            'personnage' => $personnage,
        ]);
    }
}
