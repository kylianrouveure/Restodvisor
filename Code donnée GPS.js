<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ma Carte</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <link rel="stylesheet" href="resource/code/home/map/style.css" />
</head>
<body>

<div id="map" style="height: 400px;"></div>

<!-- Inclusion de Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<!-- Inclusion du code JavaScript pour la carte -->
<script>
    // Fonction d'initialisation de la carte
    function initMap() {
        var map = L.map('map').setView([45.755898, 4.847817], 13); // Coordonnées de Lyon, France

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);

        // Ajouter un point sur la carte pour la Notre-Dame de Paris
        var marker = L.marker([48.8566, 2.3522]).addTo(map);
        marker.bindPopup('<b>Hello world!</b><br>I am a popup.').openPopup();

        // Ajouter des marqueurs pour chaque adresse géocodée
        var coordonnees = <?php echo json_encode($coordonnees); ?>;
        coordonnees.forEach(function(coord) {
            var marker = L.marker([coord.lat, coord.lon]).addTo(map);
            marker.bindPopup('<b>Adresse</b><br>Cette popup peut contenir des informations sur l\'adresse.').openPopup();
        });
    }

    // Lancer la fonction d'initialisation après le chargement de la page
    window.onload = initMap;
</script>

</body>
</html>