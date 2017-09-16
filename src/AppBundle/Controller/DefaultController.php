<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Friends;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    /**
     * [QUESTION 1] I tried multiple ways to count the number of friends following a
     * particular id.
     * 1) Using findBy from Doctrine
     * 2) Using a DQL inside a Repository
     * 3) Using a native query
     * All got approximatly the same query time so I kept the simple one (1).
     * Did not know what to return, a page or a simple JSON. Decided to return a page
     * and added the count as a variable.
     * @Route("/user/{id}", name="profile")
     */
    public function profileAction($id)
    {
        $count = count($this->getDoctrine()->getRepository(Friends::class)
        ->findByFollowing($id));
        return $this->render('base.html.twig', ['count' => $count]);
    }

    /**
     * @Route("/", name="homepage")
     */
    public function indexAction()
    {
        $data = $this->get('app.article_service')->getAllArticlesWithDetail();
        return $this->render('default/home.html.twig', ['datas' => $data]);
    }

    /**
     * @Route("/articles/{id}", name="articles")
     */
    public function articlesAction($id)
    {

    }
}
