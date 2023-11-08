<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<style>
    .search {
        position: fixed;
        z-index: 99;
        top: 150px;
        left: 0;
        bottom: 50px;
        width: 25%;
        padding: 10px 20px;
    }
        .search .list-cards {
            width: 100%;
            border-radius: 20px;
            color: var(--vert);
            background-color: var(--background-2);
            backdrop-filter: blur(7px);
            box-shadow: var(--shadow);
            height: 70%;
            overflow: auto;
        }
            .search .list-cards .card {
                display: grid;
                grid-template-columns: repeat(1, 1fr);
                grid-gap: 2px;

                /* grid-column: 2 / 6;
                padding: 10px;
                grid-column: 6; */

                width: 90%;
                margin: 10px auto;
                padding: 10px 2%;
                border-radius: 20px;
                color: var(--vert);
                background-color: var(--background);
                backdrop-filter: blur(7px);
                box-shadow: var(--shadow);
            }
                .search .list-cards .card {
                    
                }
</style>

<div class="search">
    <input class="ipt" placeholder="Rechercher un établisemment ..." />
    <div class="list-cards" >
        <div class="card" >
            <div class="card-header" >
                <div class="card-btn" >
                    <span class="material-symbols-outlined" id="icon" >storefront</span> 
                </div>

                <div class="card-btn" >
                    <span class="material-symbols-outlined" id="icon" >bar_chart</span> 
                    15 visites
                </div>

                <div class="card-btn-on" >
                    Voir la carte
                </div>
            </div>
            <div class="card-pdp" >
                <img src="resource/image/user/template.png" />
            </div>
            <div class="card-info" >
                <div>Bistro du coin</div>
                <div>Traditionnel • Français</div>
                <div>Entre 10 - 20€</div>
                <div>
                    4,5 <span class="material-symbols-outlined selected" id="icon" >star</span> 
                    (15 avis)
                </div>
            </div>
            <div class="card-images" >
                <img class="card-image" src="resource/image/user/template.png" />
                <img class="card-image" src="resource/image/user/template.png" />
                <img class="card-image" src="resource/image/user/template.png" />
            </div>
            <div class="card-gerant" >
                Géré par 
                <img src="resource/image/user/template.png" />
                <strong>Etienne LAFAURE</strong>
            </div>
        </div>
        <div class="card" >
            User
        </div>
        <div class="card" >
            User
        </div>
    </div>
</div>