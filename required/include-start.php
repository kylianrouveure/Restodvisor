<?php
    if(isset($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
        $lang = substr(strtolower($_SERVER['HTTP_ACCEPT_LANGUAGE']), 0, 2);
        switch ($lang) {
            case 'fr':
                $lang = 'fr';
                break;
            case 'it':
                $lang = 'it';
                break;
            case 'es':
                $lang = 'es';
                break;
            case 'de':
                $lang = 'de';
                break;
            default:
                $lang = 'en';
        }
    }
    else {
        $lang = 'en';
    }
?>