<?php

namespace App\Controller;

use App\Entity\Voie;
use App\Form\VoieType;
use App\Repository\VoieRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/voie')]
class VoieController extends AbstractController
{
    #[Route('/', name: 'app_voie_index', methods: ['GET'])]
    public function index(VoieRepository $voieRepository): Response
    {
        //$voieRepository->findAll();
        return $this->render('voie/index.html.twig', [
            'voies' => $voieRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_voie_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $voie = new Voie();
        $form = $this->createForm(VoieType::class, $voie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($voie);
            $entityManager->flush();

            return $this->redirectToRoute('app_voie_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('voie/new.html.twig', [
            'voie' => $voie,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_voie_show', methods: ['GET'])]
    public function show(Voie $voie): Response
    {
        return $this->render('voie/show.html.twig', [
            'voie' => $voie,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_voie_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Voie $voie, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(VoieType::class, $voie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_voie_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('voie/edit.html.twig', [
            'voie' => $voie,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_voie_delete', methods: ['POST'])]
    public function delete(Request $request, Voie $voie, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $voie->getId(), $request->request->get('_token'))) {
            $entityManager->remove($voie);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_voie_index', [], Response::HTTP_SEE_OTHER);
    }
}
