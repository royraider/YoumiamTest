<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Comments;
use AppBundle\Entity\Friends;
use AppBundle\Entity\Users;
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
     * Link service with twig
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

    /**
     * Tried to load the trad.yml using the translator option in the config.yml
     * file.
     * I red the documentation on http://symfony.com/doc/2.7/translation.html but I could not
     * make it work.
     * I tried to rename the file trad.fr.yml (or trad.en.yml) as it is recommended to do but still
     * it did not work.
     * I tried to put the file in app/Resources/traduction as advised, but still it did not work either.
     * I stuck on this for quite some time now.
     */
}
