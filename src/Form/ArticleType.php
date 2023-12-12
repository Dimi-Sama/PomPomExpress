<?php

namespace App\Form;

use App\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('titre')
            ->add('contenu')
            ->add('dateCrea', DateTimeType::class, [
                'label' => false, // Masque le libellé du champ
                'widget' => 'single_text', // Utilise une seule zone de texte pour le champ
                'data' => new \DateTime(), // Définit la valeur par défaut à la date et heure actuelles
                'attr' => ['style' => 'display: none;'], // Cache le champ en utilisant CSS
            ])
            ->add('auteur')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
