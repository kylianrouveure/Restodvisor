<?php
    session_start();

    $_SESSION['user'] = "Hugo";
    $_SESSION['localisation'] = "Tout Lyon (69)";

    $redirectURL = '../../../';

    header('Location: ' . $redirectURL);
    exit();
?>