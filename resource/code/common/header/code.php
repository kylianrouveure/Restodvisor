<link rel="stylesheet" href="resource/code/common/header/style.css" />

<header class="header" >
    <img class="logo" src="<?php echo $logo; ?>" alt="logo" />

    <div class="list-btn" >
        <div class="btn" style="padding-left: 30px;" >
            <div style="display: inline-block;" ><?php 
                if(isset($_SESSION['localisation']) && $_SESSION['localisation'] != '') {
                    echo $_SESSION['localisation'];
                }
                else { echo 'Lyon (69)'; }
            ?></div>
            <div class="icon-btn" >
                <span class="material-symbols-outlined" id="header-icon" >location_on</span>
            </div>
        </div>


        <?php 
            if(isset($_SESSION['user']) && $_SESSION['user'] != '') {
                $pdp = "resource/image/logo/icon/image.ico";
                ?>
                    <div class="btn-on" style="padding-bottom: 15px;" >
                        <img class="logo" src="<?php echo $logo; ?>" alt="logo" />
                    </div>
                    <div id="user-dropdown" >
                        <div>Mon profil</div>
                        <div>Mon établissement</div>
                        <div class="off" >Déconnexion</div>
                    </div>
                <?php
            }
            else {
                ?>
                    <div class="btn-on" style="padding: 12px 20px 14px 20px;"  >
                        Se connecter
                    </div>
                <?php
            }
        ?>
    </div>
</header>

<!-- POPUP VILLE -->
<div id="popup" >
    <input class="local" type="text" placeholder="Rechercher un établissement/profil ..." />
    <div class="list-cards" >
        <div class="card" >
            User
        </div>
        <div class="card" >
            User
        </div>
    </div>
</div>
