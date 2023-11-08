<?php
    session_start();

    $_SESSION['user'] = null;
    $_SESSION['localisation'] = null;

    $redirectURL = '../../../';

    header('Location: ' . $redirectURL);
    exit();
?>