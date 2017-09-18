<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 18/09/2017
 * Time: 19:02
 */

namespace AppBundle\Controller\API;


use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\View\View;

class ArticlesController extends FOSRestController
{
    /**
     * @Get("/articles")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function getArticlesAction()
    {
        $data = $this->get('app.article_service')->getAllArticlesWithDetail();
        $view = View::create($data);
        $view->setFormat('json');
        $view->setStatusCode(200);
        return $this->handleView($view);
    }
}