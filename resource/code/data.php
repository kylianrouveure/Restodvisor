<?php
    $etablissements = [];
    $adresses = [];

    $allEtablissement = $bdd->prepare('SELECT * FROM etablissement');
    $allEtablissement->execute();
    while ($etablissement = $allEtablissement->fetch()) {
        $etablissements[] = [
            $etablissement['ID_eta'],
            $etablissement['Nom_eta'],
            $etablissement['Adresse_eta'],
            $etablissement['Code_postal_eta'],
            $etablissement['id_user_proprio'],
            $etablissement['capacite'],
            $etablissement['Horaires'],
            $etablissement['GPS_X'],
            $etablissement['GPS_Y'],
        ];

        $adresses[] = $etablissement['Adresse_eta'].' '.$etablissement['Code_postal_eta'];
    }

    $users = [];
    $allUsers = $bdd->prepare('SELECT * FROM user');
    $allUsers->execute();
    while ($user = $allUsers->fetch()) {
        $users[] = [
            $user['id_user'],
            $user['nom_user'],
            $user['prenom_user'],
            $user['image_user']
        ];
    }

    $avis = [];
    $allAvis = $bdd->prepare('SELECT * FROM avis');
    $allAvis->execute();
    while ($avi = $allAvis->fetch()) {
        $avis[] = [
            $avi['id_etat'],
            $avi['id_user'],
            $avi['note']
        ];
    }
    
    // // Fonction pour convertir une adresse en coordonnées GPS à l'aide de l'API de géocodage Nominatim
    // function convertirAdresseEnCoordonnees($adresse) {
    //     // Construire l'URL de la requête Nominatim
    //     $url = "https://nominatim.openstreetmap.org/search?format=json&q=" . urlencode($adresse);
    
    //     // Utiliser cURL pour obtenir une réponse plus fiable et gérer les erreurs
    //     $ch = curl_init($url);
    //     curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    //     curl_setopt($ch, CURLOPT_USERAGENT, 'Ton nom d utilisateur ou application web');
    
    //     $reponseJson = curl_exec($ch);
    //     curl_close($ch);
    
    //     $reponse = json_decode($reponseJson, true);
    
    //     // Extraire les coordonnées GPS si la réponse contient des résultats
    //     if (!empty($reponse)) {
    //         $coordonneesGPS = [
    //             'lat' => $reponse[0]['lat'],
    //             'lon' => $reponse[0]['lon']
    //         ];
    //         return $coordonneesGPS;
    //     } else {
    //         // Gérer l'erreur ou retourner null si l'adresse ne peut pas être géocodée
    //         return null;
    //     }
    // }
    
    // // Convertir toutes les adresses en coordonnées GPS
    // $coordonnees = [];
    // foreach ($adresses as $adresse) {
    //     $coordonneesGPS = convertirAdresseEnCoordonnees($adresse);
    //     if ($coordonneesGPS) {
    //         $coordonnees[] = $coordonneesGPS;
    //     } else {
    //         echo "Erreur de géocodage pour l'adresse: $adresse\n";
    //     }
    // }
?>