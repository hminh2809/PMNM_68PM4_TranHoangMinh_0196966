<?php
require_once '../app/core/App.php';
    class middleware {
        function checklogin() {
            $publicPages = [
                '/PMNM_68PM4_TranHoangMinh_0196966/public/home/login',
                '/PMNM_68PM4_TranHoangMinh_0196966/public/auth/login'
            ];
            if(!isset($_SESSION['username']) && !in_array($_SERVER['REQUEST_URI'], $publicPages)) {
                header('Location: /PMNM_68PM4_TranHoangMinh_0196966/public/home/login');
                exit();
            }
        }
    }
?>