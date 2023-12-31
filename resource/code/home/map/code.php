<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<link rel="stylesheet" href="resource/code/home/map/style.css" />

<div id="map"></div>

<!-- Inclusion de Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<!-- Inclusion du code JavaScript pour la carte -->
<script>
    // Fonction d'initialisation de la carte
    // function initMap() {
    //     // Créer une carte centrée avec un zoom initial
    //     var map = L.map('map').setView([45.755898, 4.847817], 13); // Coordonnées de Paris, France
        
    //     // Ajouter une couche de tuiles OpenStreetMap
    //     L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    //         maxZoom: 19,
    //         attribution: '© OpenStreetMap contributors'
    //     }).addTo(map);
        
    //     // Ajouter un point sur la carte
    //     var marker = L.marker([48.8566, 2.3522]).addTo(map); // Coordonnées de la Notre-Dame de Paris
    //     marker.bindPopup('<b>Hello world!</b><br>I am a popup.').openPopup();
        
    //     // Ajouter d'autres points si nécessaire
    //     // var marker2 = L.marker([latitude, longitude]).addTo(map);
    // }

    function initMap() {
        var map = L.map('map').setView([45.755898, 4.847817], 13); // Coordonnées de Lyon, France

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);

        // Ajouter des marqueurs pour chaque adresse géocodée
        var coordonnees = <?php echo json_encode($etablissements); ?>;
        coordonnees.forEach(function(coord) {
            var marker = L.marker([coord[7], coord[8]]).addTo(map);
            marker.bindPopup("<strong>"+coord[1]+"</strong><br>"+coord[2]).openPopup();
        });
    }

    // Lancer la fonction d'initialisation après le chargement de la page
    window.onload = initMap;
</script>