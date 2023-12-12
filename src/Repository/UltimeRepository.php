<?php

namespace App\Repository;

use App\Entity\Ultime;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Ultime>
 *
 * @method Ultime|null find($id, $lockMode = null, $lockVersion = null)
 * @method Ultime|null findOneBy(array $criteria, array $orderBy = null)
 * @method Ultime[]    findAll()
 * @method Ultime[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UltimeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Ultime::class);
    }

//    /**
//     * @return Ultime[] Returns an array of Ultime objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('u')
//            ->andWhere('u.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('u.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Ultime
//    {
//        return $this->createQueryBuilder('u')
//            ->andWhere('u.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
