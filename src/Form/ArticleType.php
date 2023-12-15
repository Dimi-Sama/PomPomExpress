<?php

namespace App\Form;

use App\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('titre')
            ->add('contenu')
            ->add('image', FileType::class, [
                'label' => 'Image de l\'article',
                'mapped' => false, // Ne pas mapper ce champ à l'entité directement
                'required' => true,
            ])
            ->add('dateCrea', DateTimeType::class, [
                'label' => false,
                'widget' => 'single_text',
                'data' => new \DateTime(), 
                'attr' => ['style' => 'display: none;'],                                               
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
