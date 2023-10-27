<?php

namespace App\Repository;

use App\Entity\Normale;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Normale>
 *
 * @method Normale|null find($id, $lockMode = null, $lockVersion = null)
 * @method Normale|null findOneBy(array $criteria, array $orderBy = null)
 * @method Normale[]    findAll()
 * @method Normale[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NormaleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Normale::class);
    }

//    /**
//     * @return Normale[] Returns an array of Normale objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('n')
//            ->andWhere('n.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('n.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Normale
//    {
//        return $this->createQueryBuilder('n')
//            ->andWhere('n.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
