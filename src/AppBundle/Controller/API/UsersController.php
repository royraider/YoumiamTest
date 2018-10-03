<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 18/09/2017
 * Time: 19:28
 */

namespace AppBundle\Controller\API;


use AppBundle\Entity\Articles;
use AppBundle\Entity\Comments;
use AppBundle\Entity\Users;
use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\View\View;

class UsersController extends FOSRestController
{
    /**
     * @Get("/v1/users/{id}")
     */
    public function getUserV1($id)
    {
        $user = $this->getDoctrine()->getRepository(Users::class)->find($id);
        $view = View::create($user->getName());
        $view->setFormat('json');
        $view->setStatusCode(200);
        return $this->handleView($view);
    }

    /**
     * @Get("/v2/users/{id}")
     */
    public function getUserV2($id)
    {
        $user = $this->getDoctrine()->getRepository(Users::class)->find($id);
        $queryBuilder = $this->getDoctrine()->getEntityManager()->createQueryBuilder();
        $queryBuilder->select('c.id')
            ->addSelect('c.comment')
            ->from(Comments::class, 'c')
            ->where('c.userId = :id')
            ->setParameter('id', $id);
        $comments = $queryBuilder->getQuery()->getArrayResult();
        $data = [$user->getName(), $comments];
        $view = View::create($data);
        $view->setFormat('json');
        $view->setStatusCode(200);
        return $this->handleView($view);
    }

    /**
     * @Get("/v3/users/{id}")
     */
    public function getUserV3($id)
    {
        $user = $this->getDoctrine()->getRepository(Users::class)->find($id);
        $queryBuilder = $this->getDoctrine()->getEntityManager()->createQueryBuilder();
        $queryBuilder->select('c.id')
            ->from(Comments::class, 'c')
            ->where('c.userId = :id')
            ->setParameter('id', $id);
        $comments = $queryBuilder->getQuery()->getResult();
        $data = [$user->getName(), array_column($comments, 'id')];
        $view = View::create($data);
        $view->setFormat('json');
        $view->setStatusCode(200);
        return $this->handleView($view);
    }

    /**
     * I am sure there is a way easier way to do that.
     * @Get("/v4/users/{id}")
     */
    public function getUserV4($id)
    {
        $user = $this->getDoctrine()->getRepository(Users::class)->find($id);
        $queryBuilder = $this->getDoctrine()->getEntityManager()->createQueryBuilder();
        $queryBuilder->select('c.id')
            ->addSelect('c.comment')
            ->from(Comments::class, 'c')
            ->where('c.userId = :id')
            ->setParameter('id', $id);
        $comments = $queryBuilder->getQuery()->getArrayResult();

        $queryBuilder = $this->getDoctrine()->getEntityManager()->createQueryBuilder();
        $queryBuilder->select('a.id')
            ->addSelect('a.title')
            ->from(Articles::class, 'a');
        $articles = $queryBuilder->getQuery()->getArrayResult();
        $formatedArticles = [];
        foreach ($articles as $article) {
            $formatedArticles[$article['id']] = $article['title'];
        }

        foreach ($comments as &$comment) {
            $text = $comment['comment'];
            $tagPos = strpos($text, '@a:');
            while ($tagPos !== FALSE) {
                $endPos = strpos($text, ':a@');
                $articleId = substr($text, $tagPos + 3, $endPos - $tagPos - 3);
                $text = substr_replace($text,
                    $formatedArticles[$articleId],
                    $tagPos,
                    $endPos + 3 - $tagPos);
                $tagPos = strpos($text, '@a:');
            }
            $comment['comment'] = $text;
        }

        $data = [$user->getName(), $comments];
        $view = View::create($data);
        $view->setFormat('json');
        $view->setStatusCode(200);
        return $this->handleView($view);
    }
}