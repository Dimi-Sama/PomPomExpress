<?php

namespace App\Controller;

use App\Repository\AttributRepository;
use App\Repository\PersonnageRepository;
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

    #[Route('/personnage', name: 'public_personnage')]
    public function perso(PersonnageRepository $personnageRepository, AttributRepository $attributRepository, VoieRepository $voieRepository): Response
    {
        return $this->render('pom_pom/complete.html.twig', [
            'controller_name' => 'PomPomController',
            'personnages' => $personnageRepository->findAll(),
            'attributs' => $attributRepository->findAll(),
            'voies' => $voieRepository->findAll(),
        ]);
    }
}
