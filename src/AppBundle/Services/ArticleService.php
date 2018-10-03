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
        $queryResults = $this->retrieveAllArticlesInformation();
        $data = [];
        foreach ($queryResults as $queryResult) {
            if (!array_key_exists($queryResult['id'], $data)) {
                $data[$queryResult['id']] = [
                    'title' => $queryResult['title'],
                    'content' => $queryResult['content'],
                    'comments' => [],
                    'last_friend' => $queryResult['name'],
                    'count' => $queryResult['friends_count'],
                ];
            }
            if (count($data[$queryResult['id']]['comments']) < 3) {
                $data[$queryResult['id']]['comments'][] = $queryResult['comment'];
            }
        }
        return $data;
    }

    private function retrieveAllArticlesInformation()
    {
        $queryBuilder = $this->entityManager->createQueryBuilder();
        $queryBuilder->select('a.id as id')
            ->addSelect('a.title as title')
            ->addSelect('a.content as content')
            ->addSelect('c.comment as comment')
            ->addSelect('u.name as name')
            ->addSelect('(SELECT COUNT(co.userId) FROM AppBundle:Articles as ar
            INNER JOIN AppBundle:Comments as co WITH co.articleId = ar.id
            WHERE ar.id = a.id GROUP BY ar.id) as friends_count')
            ->from(Articles::class, 'a')
            ->innerJoin(Comments::class, 'c', 'WITH', 'c.articleId = a.id')
            ->innerJoin(Users::class, 'u', 'WITH', 'c.userId = u.id')
            ->orderBy('a.id')
            ->addOrderBy('c.id', 'DESC');
        return $queryBuilder->getQuery()->getResult();
    }
}