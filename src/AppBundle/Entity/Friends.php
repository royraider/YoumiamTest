<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Friends
 *
 * @ORM\Table(name="friends")
 * @ORM\Entity
 */
class Friends
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="follower", type="integer", nullable=true)
     */
    private $follower;

    /**
     * @var integer
     *
     * @ORM\Column(name="following", type="integer", nullable=true)
     */
    private $following;


}
