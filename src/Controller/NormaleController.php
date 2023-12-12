<?php

namespace App\Controller;

use App\Entity\Normale;
use App\Form\NormaleType;
use App\Repository\NormaleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/pompom/normale')]
class NormaleController extends AbstractController
{
    #[Route('/', name: 'app_normale_index', methods: ['GET'])]
    public function index(NormaleRepository $normaleRepository): Response
    {
        return $this->render('normale/index.html.twig', [
            'normales' => $normaleRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_normale_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $normale = new Normale();
        $form = $this->createForm(NormaleType::class, $normale);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($normale);
            $entityManager->flush();

            return $this->redirectToRoute('app_normale_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('normale/new.html.twig', [
            'normale' => $normale,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_normale_show', methods: ['GET'])]
    public function show(Normale $normale): Response
    {
        return $this->render('normale/show.html.twig', [
            'normale' => $normale,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_normale_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Normale $normale, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(NormaleType::class, $normale);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_normale_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('normale/edit.html.twig', [
            'normale' => $normale,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_normale_delete', methods: ['POST'])]
    public function delete(Request $request, Normale $normale, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$normale->getId(), $request->request->get('_token'))) {
            $entityManager->remove($normale);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_normale_index', [], Response::HTTP_SEE_OTHER);
    }
}
