<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 18/09/2017
 * Time: 19:28
 */

namespace AppBundle\Controller\API;


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

    }

    /**
     * @Get("/v3/users/{id}")
     */
    public function getUserV3($id)
    {

    }
}