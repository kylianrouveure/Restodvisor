<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Restaurants in Lyon</title>
<style>
    
    body, h1, h2, h3, p, ul, li { margin: 0; padding: 0; }
    body { font-family: 'Limelight', sans-serif; background-color: #003400; color: #ffcc00; }
    .container { padding: 20px; }
    header { background-color: #fbebce; padding: 10px; }
    h1, h2, h3 { font-family: 'Playfair Display', serif; }
    #map { height: 300px; background-color: #ddd; margin-bottom: 20px; }
    .restaurant-card { background-color: #fbebce; margin-bottom: 20px; padding: 10px; }
    .restaurant-card h2, .restaurant-card h3 { color: #003400; }
    .restaurant-photo { width: 100%; height: 200px; background-size: cover; margin-bottom: 10px; }
    .restaurant-info { display: flex; flex-wrap: wrap; justify-content: space-between; }
    .restaurant-info > div { flex: 1; padding: 10px; }
    .menu, .reviews, .restaurant-details { background-color: #fbebce; padding: 10px; margin-top: 10px; }
    .menu-item { margin-bottom: 5px; }
    .price { font-style: italic; }
    .button { background-color: #ffcc00; color: #003400; padding: 10px 20px; text-decoration: none; display: inline-block; }
    .button:hover { background-color: #edd096; }
    .ratings { display: flex; align-items: center; }
    .ratings span { font-size: 1.5em; margin-right: 10px; }
    .promotion { font-weight: bold; color: red; }
    .review { margin-bottom: 10px; }
    .restaurant-details p { color: #003400; }
    .restaurant-details h3 { margin-top: 10px; }
</style>
</head>
<body>
<div class="container">
    <header>
        <h1>Lyon Restaurants Guide</h1>
        <p>Select a restaurant to see more details.</p>
    </header>
    <div id="map">
        
    </div>
    <div class="restaurant-card">
        <div class="restaurant-photo" style="background-image: url('restaurant_photo.jpg');"></div>
        <div class="ratings">
            <span>⭐⭐⭐⭐</span>
            <span class="price">Average price: €30</span>
        </div>
        <div class="promotion">
            <p>Current Promotion: 10% off on all pasta dishes!</p>
        </div>
        <div class="menu">
            <h3>Menu</h3>
            <ul>
                <li class="menu-item">Spaghetti Carbonara - €12</li>
                <li class="menu-item">Margherita Pizza - €10</li>
                
            </ul>
        </div>
        <div class="reviews">
            <h3>Reviews</h3>
            <div class="review">
                <p>"Delicious food and wonderful service!" - Jane Doe</p>
            </div>
           
        </div>
        <div class="restaurant-details">
            <h3>Restaurant Info</h3>
            <p>Address: 123 Lyon Street, Lyon, France</p>
            <p>Hours: Mon-Fri 10am - 10pm, Sat-Sun 12pm - 12am</p>
            
        </div>
    </div>
</div>
</body>
</html>