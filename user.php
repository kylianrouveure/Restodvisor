<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Restaurants in Lyon</title>
<style>
    /* Resetting default browser styles */
    body, h1, h2, h3, p { margin: 0; padding: 0; }
    body { font-family: 'Limelight', sans-serif; background-color: #003400; color: #ffcc00; }
    .container { padding: 20px; }
    header { background-color: #fbebce; padding: 10px; }
    h1, h2 { font-family: 'Playfair Display', serif; }
    #map { height: 300px; background-color: #ddd; margin-bottom: 20px; }
    .restaurant-card { background-color: #fbebce; margin-bottom: 20px; padding: 10px; }
    .restaurant-card h2 { color: #003400; }
    .restaurant-card p { color: #003400; }
    .restaurant-info { display: flex; flex-wrap: wrap; justify-content: space-between; }
    .restaurant-info > div { flex: 1; padding: 10px; }
    .restaurant-photo { width: 100%; height: 200px; background-size: cover; margin-bottom: 10px; }
    .menu { background-color: #fbebce; padding: 10px; }
    .accessibility, .hours { font-size: 0.9em; }
    .reviews { background-color: #fbebce; padding: 10px; }
    .review { margin-bottom: 10px; }
    .price { font-style: italic; }
    .button { background-color: #ffcc00; color: #003400; padding: 10px 20px; text-decoration: none; }
    .button:hover { background-color: #edd096; }
</style>
</head>
<body>
<div class="container">
    <header>
        <h1>Welcome to Lyon Restaurants Guide</h1>
        <p>Select a restaurant on the map to view more details.</p>
    </header>
    <div id="map">
        <!-- Here would be the interactive map with clickable restaurants -->
    </div>
    <div class="restaurant-card">
        <div class="restaurant-photo" style="background-image: url('path_to_image.jpg');">
            <!-- Photo of the restaurant -->
        </div>
        <h2>Restaurant Name</h2>
        <div class="restaurant-info">
            <div class="menu">
                <h3>Menu</h3>
                <!-- Menu items will be listed here -->
            </div>
            <div class="accessibility">
                <h3>Accessibility</h3>
                <!-- Accessibility info here -->
            </div>
            <div class="hours">
                <h3>Hours</h3>
                <!-- Opening hours here -->
            </div>
        </div>
        <div class="reviews">
            <h3>Reviews</h3>
            <div class="review">
                <p>"Great food and atmosphere!" - John Doe</p>
                <p class="price">Average price: $$$</p>
            </div>
            <!-- More reviews here -->
        </div>
        <a href="link_to_actual_restaurant_menu" class="button">View Full Menu</a>
    </div>
</div>
</body>
</html>
"""