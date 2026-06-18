<?php
require_once __DIR__ . "/../core/Controller.php";

class home extends Controller{
    public function index(){

         $this->view('layout/masterlayout', ['viewname' => 'home/index']);
    }
    public function login(){
        $this->view('home/login');
    }
}