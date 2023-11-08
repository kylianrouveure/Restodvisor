<?php
    session_start();

    $_SESSION['user'] = "Hugo";
    $_SESSION['localisation'] = "Paris 1er (75001)";

    $redirectURL = '../../../';

    header('Location: ' . $redirectURL);
    exit();
?>