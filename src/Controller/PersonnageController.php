<?php

namespace App\Controller;

use App\Entity\Personnage;
use App\Form\PersonnageType;
use App\Repository\PersonnageRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/pompom/personnage')]
class PersonnageController extends AbstractController
{
    #[Route('/', name: 'app_personnage_index', methods: ['GET'])]
    public function index(PersonnageRepository $personnageRepository): Response
    {
        return $this->render('personnage/index.html.twig', [
            'personnages' => $personnageRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_personnage_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $personnage = new Personnage();
        $form = $this->createForm(PersonnageType::class, $personnage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($personnage);
            $entityManager->flush();

            return $this->redirectToRoute('app_personnage_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('personnage/new.html.twig', [
            'personnage' => $personnage,
            'form' => $form,
        ]);
    }
    #[Route('/affichage', name: 'app_personnage_affichage', methods: ['GET'])]
    public function affichage(PersonnageRepository $personnageRepository): Response
    {
        return $this->render('personnage/affichage.html.twig', [
            'personnages' => $personnageRepository->findAll(),
        ]);
    }
    #[Route('/{id}', name: 'app_personnage_show', methods: ['GET'])]
    public function show(Personnage $personnage): Response
    {
        return $this->render('personnage/show.html.twig', [
            'personnage' => $personnage,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_personnage_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Personnage $personnage, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(PersonnageType::class, $personnage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_personnage_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('personnage/edit.html.twig', [
            'personnage' => $personnage,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_personnage_delete', methods: ['POST'])]
    public function delete(Request $request, Personnage $personnage, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $personnage->getId(), $request->request->get('_token'))) {
            $entityManager->remove($personnage);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_personnage_index', [], Response::HTTP_SEE_OTHER);
    }
    #[Route('/ajouterDansInventraire', name: 'app_personnage_user_ajouter', methods: ['POST'])]
    public function addToAccount(): Response
    {
        if (isset($_GET["addCharacter"])) {
            if (!isset($_COOKIE["UserOwnedCharacters"])) {
                setcookie("UserOwnedCharacters", []);
            } else {
                $getOwnedCharacter = $_COOKIE["UserOwnedCharacters"];
                array_push($getOwnedCharacter, $_GET["addCharacter"]);
                setcookie("UserOwnedCharacters", $getOwnedCharacter);
            }

            return $this->redirectToRoute('index?sucess=addedcharacter');
        } else {
            return $this->redirectToRoute('index?failure=addedcharacter');
        }
        return $this->redirectToRoute('index?failure=missed');
    }
}
