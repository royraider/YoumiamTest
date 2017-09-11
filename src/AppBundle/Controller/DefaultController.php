<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/user/{id}", name="profile")
     */
    public function profileAction($id)
    {

    }

    /**
     * @Route("/articles/{id}", name="articles")
     */
    public function articlesAction($id)
    {

    }
}
