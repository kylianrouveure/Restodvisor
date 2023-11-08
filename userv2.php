<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Carte des Restaurants de Lyon</title>
<style>
  body {
    font-family: 'Limelight', sans-serif;
    background-color: #003400;
    color: #ffcc00;
    margin: 0;
    padding: 0;
  }

  .header {
    background-color: #fbebce;
    color: #003400;
    padding: 20px;
    text-align: center;
  }

  .header h1 {
    font-family: 'Playfair Display', serif;
  }

  .restaurant-map {
    width: 100%;
    height: 500px; 
    background-color: #fbebce;
    margin-top: 20px;
  }

  .restaurant-details {
    display: none;
    background-color: #fbebce;
    padding: 20px;
  }

  .restaurant-details.visible {
    display: block;
  }

</style>
</head>
<body>

<div class="header">
  <h1>Restaurants de Lyon</h1>
</div>

<div id="map" class="restaurant-map">
  <!-- Ici, tu peux intégrer une carte interactive avec les restaurants -->
</div>

<div class="restaurant-details" id="details">
  <h2>Nom du Restaurant</h2>
  <img src="image_du_restaurant.jpg" alt="Photo du Restaurant">
  <p>Menu et prix moyens ici</p>
  <p>Avis et notes ici</p>
  
</div>

<script>
  // Ici, tu peux ajouter du JavaScript pour gérer les interactions
</script>

</body>
</html>
