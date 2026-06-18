<?php
session_start();
class auth{
    public $user = [
        "admin" => "123456",
        "minh" => "2003"
    ];
    public function login(){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $username = $_POST["username"] ?? '';
            $password = $_POST["password"] ?? '';
            if (isset($this->user[$username]) && $this->user[$username] === $password) {
                $_SESSION["username"] = $username;
                header("Location: /PMNM_68PM4_TranHoangMinh_0196966/public/home/index");
                exit();
            } else {
                header("Location: /PMNM_68PM4_TranHoangMinh_0196966/public/home/login");
                exit();
            }
        }
    }

    public function logout(){
        session_unset();
        session_destroy();
        header("Location: /PMNM_68PM4_TranHoangMinh_0196966/public/home/login");
        exit();
    }
}
?>

