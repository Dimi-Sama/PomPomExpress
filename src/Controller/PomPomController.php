<?php

namespace App\Controller;

use IntlDateFormatter;
use App\Entity\Article;
use App\Entity\Personnage;
use App\Entity\Commentaire;
use App\Form\CommentaireType;
use App\Repository\VoieRepository;
use App\Repository\ArticleRepository;
use App\Repository\AttributRepository;
use App\Repository\PersonnageRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

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
    #[Route('/blog/article', name: 'public_article', methods: ['GET'])]
    public function article(ArticleRepository $articleRepository, PaginatorInterface $paginator, Request $request): Response
    {
        $articles = $articleRepository->findAll();

        $pagination = $paginator->paginate(
            $articles,
            $request->query->getInt('page', 1), // Récupère le numéro de la page dans l'URL, 1 par défaut
            10 // Nombre d'articles par page
        );

        return $this->render('pom_pom/article.html.twig', [
            'pagination' => $pagination,
        ]);
    }
    #[Route('blog/article/{id}', name: 'public_article_show', methods: ['GET', 'POST'])]
    public function showarticle(Article $article, Request $request, EntityManagerInterface $entityManager): Response
    {
        $commentaire = new Commentaire();
        $form = $this->createForm(CommentaireType::class, $commentaire, [
            'utilisateur' => $this->getUser(), // Passer l'ID de l'utilisateur actuel
            'article' => $article, // Passer l'ID de l'article en cours
        ]);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($commentaire);
            $entityManager->flush();

            return $this->redirectToRoute('public_article_show', ['id' => $article->getId()], Response::HTTP_SEE_OTHER);
        }


        $formatter = new IntlDateFormatter('fr_FR', IntlDateFormatter::FULL, IntlDateFormatter::NONE);

        return $this->render('pom_pom/article_show.html.twig', [
            'article' => $article,
            'form' => $form,
            'dateFormat' => $formatter->format($article->getDateCrea())
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
