<?php
namespace App\Model;
class User{
    public $user_name;
    public $email;

    public function setUserName($userName){
        $this->user_name = trim($userName);
    }
    public function getUserName(){
        return $this->user_name;
    }

    public function setEmail($email){
        $this->email = $email;
    }
    public function getEmail(){
        return $this->email;
    }
}