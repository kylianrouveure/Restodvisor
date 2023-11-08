<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<link rel="stylesheet" href="resource/code/home/search/style.css" />

<div class="search">
    <input class="ipt" placeholder="Rechercher un établisemment ..." />
    <div class="list-cards" >
        <div class="card" >
            <div class="card-header" >
                <div class="card-btn" >
                    <span class="material-symbols-outlined" id="icon" >storefront</span> 
                </div>

                <div class="card-btn" >
                    <div class="material-symbols-outlined" id="icon" >bar_chart</div> 
                    <div style="display: inline-block;vertical-align: middle;margin-bottom: 4px;" >Trés animé</div>
                </div>

                <div class="card-btn on" onclick="document.getElementById('popup-template').style.display = 'block'" >
                    Voir la carte
                </div>
            </div>
            <div class="card-pdp" >
                <img class="pdp" src="resource/image/resto/r1.jpeg" />
            </div>
            <div class="card-info" >
                <div class="card-name" >Bistro du coin</div>
                <div class="card-type" >Traditionnel • Français</div>
                <div class="card-price" >15 clients mtn / 40 couverts</div>
                <div class="card-price" >Entre 10 - 20€</div>
                <div class="card-avis" >
                    4,5 <span class="material-symbols-outlined selected" id="icon" >star</span> 
                    (15 avis)
                </div>
                <div class="card-gerant" >
                    Géré par 
                    <img class="pdp" src="resource/image/user/template.png" />
                    <strong>Etienne LAFAURE</strong>
                </div>
            </div>
            <div class="card-images" >
                <img class="card-image" src="resource/image/resto/r2.jpeg" />
                <img class="card-image" src="resource/image/resto/r3.jpeg" />
                <img class="card-image" src="resource/image/resto/r4.jpeg" />
            </div>
        </div>
        <div class="card" >
            <div class="card-header" >
                <div class="card-btn" >
                    <span class="material-symbols-outlined" id="icon" >person</span> 
                </div>

                <div class="card-btn on" >
                    Voir l'utilisateur
                </div>
            </div>
            
            <div class="card-pdp" >
                <img class="pdp" src="resource/image/user/template.png" />
            </div>
            <div class="card-info" >
                <div class="card-name" >Hugo MAURIN</div>
                <div class="card-type" >10 avi(s)</div>
                <div class="card-type" >2 établissement(s)</div>
            </div>
            <div class="card-etablissement-cards" >
                <div class="etablissement-cards" >
                    <div class="card-pdp" >
                        <img class="pdp-2" src="resource/image/resto/r2.jpeg" />
                    </div>
                    <div class="card-name" >
                        Bistrot de Lyon
                    </div>
                    <div class="card-btn" >
                        <div class="on" >
                            Voir
                        </div>
                    </div>
                </div>
                <div class="etablissement-cards" >
                    <div class="card-pdp" >
                        <img class="pdp-2" src="resource/image/resto/r3.jpeg" />
                    </div>
                    <div class="card-name" >
                        L'entrecote
                    </div>
                    <div class="card-btn" >
                        <div class="on" >
                            Voir
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>