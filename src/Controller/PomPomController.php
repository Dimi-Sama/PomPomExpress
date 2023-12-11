<?php

namespace App\Controller;

use App\Repository\PersonnageRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PomPomController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(PersonnageRepository $personnageRepository): Response
    {
        return $this->render('pom_pom/complete.html.twig', [
            'controller_name' => 'PomPomController',
            'personnages' => $personnageRepository->findAll()
        ]);
    }
}
