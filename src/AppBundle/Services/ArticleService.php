<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 15/09/2017
 * Time: 19:30
 */

namespace AppBundle\Services;


use AppBundle\Entity\Articles;
use AppBundle\Entity\Comments;
use AppBundle\Entity\Users;
use Doctrine\ORM\EntityManagerInterface;

class ArticleService
{
    private $entityManager;
    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    public function getAllArticlesWithDetail()
    {
        $queryResult = $this->retrieveAllArticlesInformation();
    }

    private function retrieveAllArticlesInformation()
    {
        $queryBuilder = $this->entityManager->createQueryBuilder();
        $queryBuilder->select('a.title')
            ->addSelect('a.content')
            ->addSelect('c.comment')
            ->addSelect('u.name')
            ->from(Articles::class, 'a')
            ->innerJoin(Comments::class, 'c', 'WITH', 'c.articleId = a.id')
            ->innerJoin(Users::class, 'u', 'WITH', 'c.userId = u.id')
            ->orderBy('a.id')
            ->addOrderBy('c.id', 'DESC');
        return $queryBuilder->getQuery()->getResult();
    }
}