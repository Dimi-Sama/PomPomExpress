<?php

namespace App\Controller;

use App\Entity\Ultime;
use App\Form\UltimeType;
use App\Repository\UltimeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/ultime')]
class UltimeController extends AbstractController
{
    #[Route('/', name: 'app_ultime_index', methods: ['GET'])]
    public function index(UltimeRepository $ultimeRepository): Response
    {
        return $this->render('ultime/index.html.twig', [
            'ultimes' => $ultimeRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_ultime_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $ultime = new Ultime();
        $form = $this->createForm(UltimeType::class, $ultime);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($ultime);
            $entityManager->flush();

            return $this->redirectToRoute('app_ultime_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('ultime/new.html.twig', [
            'ultime' => $ultime,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_ultime_show', methods: ['GET'])]
    public function show(Ultime $ultime): Response
    {
        return $this->render('ultime/show.html.twig', [
            'ultime' => $ultime,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_ultime_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Ultime $ultime, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(UltimeType::class, $ultime);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_ultime_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('ultime/edit.html.twig', [
            'ultime' => $ultime,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_ultime_delete', methods: ['POST'])]
    public function delete(Request $request, Ultime $ultime, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$ultime->getId(), $request->request->get('_token'))) {
            $entityManager->remove($ultime);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_ultime_index', [], Response::HTTP_SEE_OTHER);
    }
}
