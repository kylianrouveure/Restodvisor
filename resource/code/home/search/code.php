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
            backdrop-filter: blur(5px);
            box-shadow: var(--shadow);
            height: 75%;
            overflow: auto;
        }
            .search .list-cards .card {
                display: grid;
                grid-template-columns: repeat(6, 1fr);
                grid-gap: 5px;

                width: 90%;
                margin: 10px auto;
                border-radius: 30px;
                color: var(--vert);
                background-color: var(--background);
                backdrop-filter: blur(7px);
                box-shadow: var(--shadow);
                overflow: auto;
            }
                .search .list-cards .card-header {
                    grid-column: 1 / 7;
                    grid-row: 1;
                    font-size: 13px;
                    padding: 10px 30px 8px 30px;
                    color: var(--background);
                    background-color: var(--vert);
                }
                    .search .list-cards .card-header .card-btn {
                        display: inline-block;
                        margin-right: 10px;
                    }
                        .search .list-cards .card-header .card-btn #icon {
                            vertical-align: middle;
                            display: inline-block;
                        }

                        .search .list-cards .card-header .card-btn.on {
                        float: right;
                        margin-right: 0;
                        border-radius: 20px;
                        font-size: 10px;
                        padding: 5px 20px;
                        color: var(--vert);
                        background-color: var(--background);
                        transition: .3s;
                    }
                        .search .list-cards .card-header .card-btn.on:hover {
                            filter: brightness(70%);
                        }

                .search .list-cards .card-pdp {
                    grid-column: 1 / 3;
                    grid-row: 2;
                    text-align: center;
                    align-self: center;
                }
                    .search .list-cards .card-pdp .pdp {
                        width: 80%;
                        aspect-ratio: 1/1;
                        border-radius: 10%;
                        object-fit: cover;
                    }
                    
                .search .list-cards .card-info {
                    grid-column: 3/7;
                    grid-row: 2;
                }   
                    .search .list-cards .card-info .card-name {
                        font-size: 20px;
                        font-weight: 900;
                        margin-top: 10px;
                    }
                    .search .list-cards .card-info .card-type {
                        font-size: 10px;
                        margin: 4px 0 10px 0;
                    }
                    .search .list-cards .card-info .card-price {
                        font-size: 10px;
                        margin: 7px 10px;
                    }
                    .search .list-cards .card-info .card-avis {
                        font-size: 10px;
                        margin: 3px 10px;
                    }
                        .search .list-cards .card-info .card-avis #icon {
                            font-size: 13px;
                            vertical-align: top;
                        }
                    .search .list-cards .card-info .card-gerant {
                        font-size: 13px;
                        margin-top: 14px;
                    }
                        .search .list-cards .card-info .card-gerant .pdp {
                            display: inline-block;
                            width: 20px;
                            aspect-ratio: 1/1;
                            border-radius: 50%;
                            object-fit: cover;
                            vertical-align: top;
                        }
                .search .list-cards .card-images {
                    grid-column: 1/7;
                    grid-row: 3;
                    padding: 10px 20px;
                    overflow: auto;
                    white-space: nowrap;
                }
                    .search .list-cards .card-images .card-image {
                        display: inline-block;
                        width: 40%;
                        margin: 0 3px;
                        aspect-ratio: 1/1;
                        border-radius: 20px;
                        box-shadow: var(--shadow);
                    }
            .card-etablissement-cards {
                grid-column: 1/7;
                grid-row: 3;
                padding: 4px 0 4px 0;
            }
                .etablissement-cards {
                    display: grid;
                    grid-template-columns: repeat(6, 1fr);
                    width: 95%;
                    margin: 5px auto;
                    padding: 5px 0;
                    border-radius: 24px;
                    box-shadow: var(--shadow);
                }
                    .etablissement-cards .card-pdp {
                        grid-column: 1/2;
                        grid-row: 1;
                        text-align: center;
                        align-self: center;
                    }
                        .etablissement-cards .card-pdp .pdp-2 {
                            width: 40px;
                            aspect-ratio: 1/1;
                            border-radius: 50%;
                            object-fit: cover;
                        }
                    .etablissement-cards .card-name {
                        grid-column: 3/7;
                        grid-row: 2;
                        align-self: center;
                    }
                    .etablissement-cards .card-btn {
                        grid-column: 7;
                        grid-row: 2;
                        padding-right: 5px;
                        text-align: center;
                        align-self: center;
                    }
                    .etablissement-cards .card-btn .on {
                        font-size: 13px;
                        padding: 8px 5px;
                        border-radius: 50%;
                        background-color: var(--vert);
                        color: var(--background);
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
                    <div class="material-symbols-outlined" id="icon" >bar_chart</div> 
                    <div style="display: inline-block;vertical-align: middle;margin-bottom: 4px;" >Trés animé</div>
                </div>

                <div class="card-btn on" >
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
                        Bistrot Lyon 2
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