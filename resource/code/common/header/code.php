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
            <div class="icon-btn" onclick="document.getElementById('localisation-popup').style.display = 'none'"  >
                <span class="material-symbols-outlined" id="header-icon" >location_on</span>
            </div>
        </div>

        <?php 
            if(isset($_SESSION['user']) && $_SESSION['user'] != '') {
                $pdp = "resource/image/logo/icon/image.png";
                ?>
                    <div class="btn" onclick="document.getElementById('user-dropdown').style.display = 'block'" >
                        <?php echo $_SESSION['user']; ?>
                        <img class="pdp_3" src="<?php echo $pdp; ?>" alt="logo" />
                    </div>
                <?php
            }
            else {
                ?>
                    <div onclick="document.getElementById('user-dropdown').style.display = 'block'" class="btn-on" style="padding: 12px 20px 14px 20px;"  >
                        Se connecter
                    </div>
                <?php
            }
        ?>
    </div>
</header>
        
<?php 
    if(isset($_SESSION['user']) && $_SESSION['user'] != '') {
        ?>
            <div id="user-dropdown" >
                <div class="btn-user" >Mon profil</div>
                <div class="btn-user" >Mon établissement</div>
                <div class="btn-user off" onclick="document.location.href = 'resource/code/log/code.php';" style="background-color:var(--red-2);" >Déconnexion</div>
                <div class="btn-user off" onclick="document.getElementById('user-dropdown').style.display = 'none'" style="background-color:var(--red-2);" >
                    Fermer <span class="material-symbols-outlined" >close</span>
                </div>
            </div>
        <?php
    }
    else {
        ?>
            <div id="user-dropdown" >
                <div class="close" onclick="document.getElementById('user-dropdown').style.display = 'none'" >
                    <span class="material-symbols-outlined" >close</span>
                </div>
                <div class="content" id="logIn" >
                    <h4 style="margin: 10px 20px;padding:0;" >Se connecter</h4>
                    <input class="ipt" type="text" placeholder="Username" />
                    <input class="ipt" type="password" placeholder="Mot de passe" />
                    <button onclick="document.location.href = 'resource/code/log/code.php';" class="sbt">
                        Se connecter
                    </button>
                    <button onclick="document.getElementById('logIn').style.display = 'none';document.getElementById('signUp').style.display = 'block';" >Je n'ai pas de compte</button>
                </div>
                <div class="content" id="signUp" style="display:none" >
                    <h4 style="margin: 10px 20px;padding:0;" >S'inscrire</h4>
                    <input class="ipt" type="text" placeholder="Username" />
                    <input class="ipt" type="text" placeholder="Nom" />
                    <input class="ipt" type="text" placeholder="Prénom" />
                    <input class="ipt" type="text" placeholder="Mail" />
                    <input class="ipt" type="password" placeholder="Mot de passe" />
                    <input class="sbt" onclick="document.location.href = 'resource/code/common/log/code.php';" type="submit" value="S'inscrire" />
                    <button onclick="document.getElementById('logIn').style.display = 'block';document.getElementById('signUp').style.display = 'none';" >J'ai déjà un compte</button>
                </div>
            </div>
        <?php
    }
?>

<style>
    #user-dropdown {
        display: none;
        position: fixed;
        z-index: 99;
        top: 110px;
        right: 30px;
        width: 20%;
        background-color: var(--background-2);
        backdrop-filter: blur(7px);
        border-radius: 20px;
        box-shadow: var(--shadow);
        overflow: hidden;
    }
    .content {
        padding: 10px;
    }
    .btn-user {
        padding: 20px;
        background-color: var(--background-2);
    }
        .btn-user:hover {
            filter: brightness(80%);
        }
    .sbt {
        width: 100%;
        border: none;
        margin: 10px 0 15px 0;
        padding: 10px;
        border-radius: 10px;
        color: white;
        background-color: var(--vert-2);
        box-shadow: var(--shadow);
    }
    .close {
        width: min-content;
        float: right;
        font-size: 12px;
        padding: 5px;
        margin: 10px 10px 0px 0;
        border-radius: 20px;
        background-color: var(--red-2);
        backdrop-filter: blur(5px);
        box-shadow: var(--shadow);
    }
</style>


<!-- POPUP VILLE -->
<div id="localisation-popup" >
    <input class="local" type="text" placeholder="Rechercher un établissement/profil ..." />
    <div class="list-cards" >
        <div class="card" >
            Tout Lyon (69)
        </div>
        <div class="card" >
            Lyon (69001)
        </div>
        <div class="card" >
            Lyon (69002)
        </div>
    </div>
</div>
