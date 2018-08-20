#!/bin/bash
#  
#             GitTool v1.0 
#             GitTool Create By : Aniket          
#             GitHub : https://github.com/hackingvila/toolstore.git
#             website : https://hackingvila.wordpress.com
#             Automatic Donwload Tools
#                                     
#                                                  
#

#Colors
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
echo ""
sleep 2
# Check root
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $yellow"[*] Thanks For Using GitTool  :)"
exit
}
clear
# check internet 
function checkinternet {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo  " Checking For Internet: FAILED
    This Script Needs An Active Internet Connection"
    echo " GitClin Will Now Exit"
    echo && sleep 2
    exit
  else
    echo -e "Checking For Internet: \e[5m CONNECTED" 
    echo "OK!";   
  fi
}
checkinternet
sleep 2
bar ()
{
BAR='█║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║║█'    
                         
for i in {1..35}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.08
done
}
bar
echo
echo
#banner head
function main_menu()
{
    while :
    do

echo -e "\e[1;33m       Script Coded By =>   \033[5;37m \033[41m ♥ Aniket Dinda ♥  \e[0m"

echo -e "████████╗ ██████╗  ██████╗ ██╗      ███████╗████████╗ ██████╗ ╗██████╗ ███████╗"
echo -e "╚══██╔══╝██╔═══██╗██╔═══██╗██║      ██╔════╝╚══██╔══╝██╔═══██╗ ██╔══██╗██╔════╝"
echo -e "   ██║   ██║   ██║██║   ██║██║      ███████╗   ██║   ██║   ██║ ██████╔╝█████╗  "
echo -e "   ██║   ██║   ██║██║   ██║██║      ╚════██║   ██║   ██║   ██║ ██╔══██╗██╔══╝  "
echo -e "   ██║   ╚██████╔╝╚██████╔╝███████╗ ███████║   ██║   ╚██████╔╝ ██║  ██ ███████╗"
echo -e "   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝ ╚══════╝   ╚═╝    ╚═════╝    ╚═╝   ╚═╝  ╚═╝"
                                                    
echo ""

echo -e $cyan"    Github              $white":" $red https://github.com/hackingvila/toolstore.git"
echo -e $cyan"    website             $white":" $red https://hackingvila.wordpress.com"
echo -e $cyan ""
echo -e $okegreen"   ====================== Tool Lest =======================    ";
        echo
        echo "[1] ✔ N-Reader	                       [2] ✔ WiFi-Pumpkin"
        echo "[3] ✔ Th3inspector 		       [4] ✔ DDos-Attack"
        echo "[5] ✔ Wifi Hacking tool		       [6] ✔ Website Scnner (pureblood)"
        echo "[7] ✔ Wifite2                           [8] ✔ routersploit"
        echo "[9] ✔ TheFatRat                        [10]✔ Evil-Droid"
        echo "[11]✔ venom                            [12]✔ zirikatu" 
        echo "[13]✔ Cl0neMast3r                      [14]✔ fluxion" 
        echo "[q] ✔ Quit"
        echo
        read -p "Select>: " option
        echo
        
        case "$option" in 
            1)  echo "N-Reader "
                echo -e $red "############## N-Reader ################"
                sleep 2
                git clone https://github.com/softaim/N-Reader.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] N-Reader Downloaded " 
                cd N-Reader
                chmod +x *.sh
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download N-Reader😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            2)  echo "WiFi-Pumpkin"
                echo -e $red "############## WiFi-Pumpkin ################"
                sleep 2
                git clone https://github.com/P0cL4bs/WiFi-Pumpkin.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] WiFi-Pumpkin Downloaded " 
                cd WiFi-Pumpkin
                chmod +x *.sh
                chmod 777 *.py
                ./installer.sh --install
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download WiFi-Pumpkin😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            3)  echo "Th3inspector "
                echo -e $red "############## Th3inspector ################"
                sleep 2
                git clone https://github.com/Moham3dRiahi/Th3inspector.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Th3inspector Downloaded " 
                cd Th3inspector
                chmod +x *.sh
                ./install.sh
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download Th3inspector😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            4)  echo "GoldenEye "
                echo -e $red "############## GoldenEye ################"
                sleep 2
                git clone https://github.com/jseidl/GoldenEye.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] GoldenEye Downloaded " 
                cd GoldenEye
                chmod 777 *.py               
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download GoldenEye😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            5)  echo "Wifi-HACKING TOOL airgeddon "
                echo -e $red "############## airgeddon ################"
                sleep 2
                git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] airgeddon Downloaded " 
                cd airgeddon
                chmod 777 *.sh               
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download airgeddon😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            6)  echo "Website scanner "
                echo -e $red "############## pureblood ################"
                sleep 2
                git clone https://github.com/cr4shcod3/pureblood.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] pureblood Downloaded " 
                cd pureblood
                chmod 777 *.py && pip install -r requirements.txt
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download pureblood😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            7)  echo "wifite2 "
                echo -e $red "############## wifite2 ################"
                sleep 2
                git clone https://github.com/derv82/wifite2.git > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] wifite2 Downloaded " 
                cd wifite2
                chmod 777 *.py && python -m wifite
                sudo python setup.py install
                cd ..
                echo ""
                echo -e $red "########## 😃Finish ,Download wifite2😃 ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            8)  echo "routersploit"
                echo -e $red "############## routersploit ###################"
                sleep 2
                git clone https://github.com/Ha3MrX/routersploit > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] routersploit  Downloaded "
                echo -e $yellow "" 
                cd routersploit
                chmod +x routersploit.sh
                cd ..
                echo ""
                echo -e $red "########## Finish routersploit ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            9)  echo "TheFatRat"
                echo -e $red "############## TheFatRat ###################"
                sleep 2
                git clone https://github.com/Screetsec/TheFatRat > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] TheFatRat  Downloaded"
                echo -e $yellow "" 
                while true; do
                   read -p "[*] Would you like to install TheFatRat? (Y/n) = " yn
                   case $yn in
                   [Yy]* ) cd TheFatRat;chmod +x setup.sh;sudo ./setup.sh;cd ..;echo;echo -e $green "【!】Return To The Main Menu【!】";read -p "pess any key to return ...";clear;main_menu;;
                   [Nn]* ) echo "";clear;main_menu;;
                   esac
                done
                echo ""
                echo -e $red "########## Finish ,Download AND Install TheFatRat ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           10)  echo "Evil-Droid"
                echo -e $red "############## Evil-Droid ###################"
                sleep 2
                git clone https://github.com/M4sc3r4n0/Evil-Droid > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Evil-Droid Downloaded "
                cd Evil-Droid
                chmod +x evil-droid
                cd ..
                echo ""
                echo -e $red "########## Finish Download Evil-Droid ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           11)  echo "trape"
                echo -e $red "############## trape ###################"
                sleep 2
                git clone https://github.com/boxug/trape > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] trape Downloaded "
                cd trape
                chmod +x trape.py
                cd .. 
                echo ""
                echo -e $red "########## Finish Download trape ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           12)  echo "zirikatu"
                echo -e $red "############## zirikatu ###################"
                sleep 2
                git clone https://github.com/pasahitz/zirikatu > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] zirikatu Downloaded "
                cd zirikatu
                chmod +x zirikatu.sh
                cd ..
                echo ""
                echo -e $red "########## Finish Download zirikatu ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           13)  echo "Cl0neMast3r"
                echo -e $red "############## vbscan ###################"
                sleep 2
                git clone https://github.com/Abdulraheem30042/Cl0neMast3r > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Cl0neMast3r Downloaded " 
                cd Cl0neMast3r
                chmod +x Cl0neMast3r.py
                cd ..
                echo ""
                echo -e $red "########## Finish Download Cl0neMast3r ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
           14)  echo "fluxion"
                echo -e $red "############## fluxion ###################"
                sleep 2
                git clone https://github.com/FluxionNetwork/fluxion > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] fluxion  Downloaded "
                cd fluxion
                chmod +x fluxion.sh
                cd ..
                echo ""
                echo -e $red "########## Finish Download fluxion ############"
                echo
                echo -e $green "【!】Return To The Main Menu【!】"
                read -p "pess any key to return ..."
                clear
                ;;
            q)  echo -e $yellow " Thanks For Using My Tools Good Bye  {Aniket}  !!"
                echo
                exit 0 
                ;;
         clear) echo -e $red "Screen clear"
                sleep 2
                ;;
        esac
    done
}
main_menu
