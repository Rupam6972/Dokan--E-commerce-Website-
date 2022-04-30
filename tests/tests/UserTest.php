<?php
class UserTest extends \PHPUnit\Framework\TestCase{

    //These 2 are successfull in unit testing
    public function testReturnUserName(){
        $user = new \App\Model\User;
        $user->setUserName('Rupam Golder');
        $this->assertEquals($user->getUserName(), 'Rupam Golder');
    }

    public function testReturnEmailAddress(){
        $user = new \App\Model\User;
        $user->setEmail('rupamgolderdiptoo@gmail.com');
        $this->assertEquals($user->getEmail(), 'rupamgolderdiptoo@gmail.com');
    }
}

