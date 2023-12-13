<?php

namespace App\Form;

use App\Entity\Commentaire;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CommentaireType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('contenu')
            ->add('utilisateur', null, [
                'data' => $options['utilisateur'], // Passer  l'utilisateur ici
                'label' => false,
                'attr' => ['style' => 'display: none;']
            ])
            ->add('article', null, [
                'data' => $options['article'], // Passer l'ID de l'article ici
                'label' => false,
                'attr' => ['style' => 'display: none;']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Commentaire::class,
            'utilisateur' => null, // Définir une option pour l'utilisateur
            'article' => null, // Définir une option pour l'article
        ]);
    }
}
