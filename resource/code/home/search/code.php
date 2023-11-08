<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<link rel="stylesheet" href="resource/code/home/search/style.css" />

<script>
    function search(inputId, classSelector) {
        // Declare variables
        var input, filter, items, i, txtValue;
        input = document.getElementById(inputId);
        filter = input.value.toUpperCase();
        items = document.getElementsByClassName(classSelector);

        // Loop through all items, and hide those who don't match the search query
        for (i = 0; i < items.length; i++) {
            txtValue = items[i].textContent || items[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                items[i].style.display = "grid";
            } else {
                items[i].style.display = "none";
            }
        }
    }
</script>

<div class="search">
    <input class="ipt" id="search-card" placeholder="Rechercher un établisemment ..." onkeyup="search('search-card', 'card')" />
    <div class="list-cards" >
        <?php
            $i = 0;
            $iUser = 0;
            foreach($etablissements as $key => $etablissement) {
                $adminUser = $etablissement[4];
                $capacite = $etablissement[5];
                $servi = rand(1, $etablissement[5]);
                $animation = ($servi/$capacite)*100;
                ?>
                    <div class="card" >
                        <div class="card-header" >
                            <div class="card-btn" >
                                <span class="material-symbols-outlined" id="icon" >storefront</span> 
                            </div>

                            <div class="card-btn" >
                                <div class="material-symbols-outlined" id="icon" >bar_chart</div> 
                                <div style="display: inline-block;vertical-align: middle;margin-bottom: 4px;" >
                                    <?php
                                        if($animation > 80) {
                                            echo 'Très animé';
                                        }
                                        else if($animation > 60) {
                                            echo 'Moyen animé';
                                        }
                                        else if($animation > 40) {
                                            echo 'Animé';
                                        }
                                        else if($animation > 20) {
                                            echo 'Peu animé';
                                        }
                                        else {
                                            echo 'Pas animé';
                                        }
                                    ?>
                                </div>
                            </div>

                            <div class="card-btn on" onclick="document.getElementById('popup-template').style.display = 'block'" >
                                Voir la carte
                            </div>
                        </div>
                        <div class="card-pdp" >
                            <img class="pdp" src="resource/image/resto/r1.jpeg" />
                        </div>
                        <div class="card-info" >
                            <div class="card-name" ><?php echo $etablissement[1]; ?></div>
                            <div class="card-type" >Traditionnel • Français</div>
                            <div class="card-price" >Horaire : <?php echo $etablissement[6]; ?></div>
                            <div class="card-price" ><?php echo $servi; ?> clients mtn / <?php echo $capacite; ?> couverts</div>
                            <div class="card-price" >Entre 10 - 20€</div>
                            <div class="card-avis" >
                                4,5 <span class="material-symbols-outlined selected" id="icon" >star</span> 
                                (15 avis)
                            </div>
                            <div class="card-gerant" >
                                Géré par 
                                <img class="pdp" src="<?php echo $users[$adminUser][3]; ?>" />
                                <strong><?php echo $users[$adminUser][2]; ?> <?php echo strtoupper($users[$adminUser][1]); ?></strong>
                            </div>
                        </div>
                        <div class="card-images" >
                            <img class="card-image" src="resource/image/resto/r2.jpeg" />
                            <img class="card-image" src="resource/image/resto/r3.jpeg" />
                            <img class="card-image" src="resource/image/resto/r4.jpeg" />
                        </div>
                    </div>
                <?php
                    if($i == 1) {
                        $iUser += 1;
                        ?>
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
                                    <img class="pdp" src="<?php echo $users[$iUser][3]; ?>" />
                                </div>
                                <div class="card-info" >
                                    <div class="card-name" ><?php echo $users[$iUser][2]; ?> <?php echo strtoupper($users[$iUser][1]); ?></div>
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
                        <?php
                        $i = 0;
                    }
                $i += 1;
            }
        ?>
    </div>
</div>