#!/bin/bash
sudo apt-get install curl -y
sudo apt-get install wget -y
if ! [ -d requisitos ]
	then
		mkdir requisitos
fi

if ! [ -d requisitos/resultados ]
	then
		mkdir requisitos/resultados
fi

if ! [ -d requisitos/osgint ]
	then
		cd requisitos
		sudo git clone https://github.com/hippiiee/osgint.git && cd osgint && pip3 install -r requirements.txt
		cd ..
		cd ..
fi

clear
echo
echo "###############"
echo "[1] Español"
echo "[2] English"
echo "###############"
echo
read -p "Elige una Opcion / Choose an Option: " opc1
	case $opc1 in
			1 )	clear
				echo
				echo "                                  ╔═╗ ╔╗  ╔╗╔═══╗     ╔═══╦═══╦══╦═╗ ╔╦════╗ "
				echo "                                  ║║╚╗║║ ╔╝╚╣╔═╗║     ║╔═╗║╔═╗╠╣╠╣║╚╗║║╔╗╔╗║ "
				echo "                                  ║╔╗╚╝╠═╩╗╔╣╚══╦══╦══╣║ ║║╚══╗║║║╔╗╚╝╠╝║║╚╝ "
				echo "                                  ║║╚╗║║║═╣║╚══╗║╔╗║╔═╣║ ║╠══╗║║║║║╚╗║║ ║║   "
				echo "                                  ║║ ║║║║═╣╚╣╚═╝║╚╝║╚═╣╚═╝║╚═╝╠╣╠╣║ ║║║ ║║   "
				echo "                                  ╚╝ ╚═╩══╩═╩═══╩══╩══╩═══╩═══╩══╩╝ ╚═╝ ╚╝   "
				echo "                                    ℕ𝕖𝕥𝕨𝕠𝕣𝕜    𝕊𝕠𝕔𝕚𝕒𝕝       🔍 𝕆𝕊𝕀ℕ𝕋 🔍         "
				echo "                              __________________________________________________"					
				echo "                                   ︻デ═一  Created by: XDeadHackerX  ︻デ═一 "
				echo "                                          Updated by Seb2lyon v1.1.1 "
				echo "          ---------------------------------------------------------------------------------------------"
				echo "          Cualquier acción y o actividad relacionada con 𝓝𝓮𝓽𝓢𝓸𝓬_𝓞𝓢𝓘𝓝𝓣 es únicamente su responsabilidad"
				echo "          ---------------------------------------------------------------------------------------------"
				echo
				echo
				echo "                                     ==============================="
				echo "                                     [1]         Instragram 🕵️""      |"
				echo "                                     [2]           TikTok 🕵️""        |"
				echo "                                     [3]           Twitter ""        |"
				echo "                                     [4]           Twitch ""         |"
				echo "                                     [5]          Telegram 🕵️""       |"
				echo "                                     [6]           GitHub 🕵️""        |"
				echo "                                     [99]   ------> Salir ""<------  |"
				echo "                                     ==============================="
				echo
				echo
				read -p "[*] Elige una opcion: " opc2
					case $opc2 in
							1 )	echo
								read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: @$username"
								echo "#################################"
								echo
								wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.pixwox.com/profile/$username/ -O requisitos/resultados/Ig-$username.txt >/dev/null
								sleep 6
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Ig-$username.txt | awk '/"fullname">/ {print}' | cut -c 22- | rev | cut -c6- | rev`
								
								echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
								echo "[*] Followers: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
								echo "[*] Following: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
								echo "[*] Account Status(Empty = Public): " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
								echo
								echo "[*] URL Profile: https://www.instagram.com/$username"
								;;
							2 )	echo
								read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://urlebird.com/es/user/$username/ > requisitos/resultados/TikTok-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
								echo "[*] Description: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
								echo "[*] Followers: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<div class="col-7 col-md-auto text-truncate">🦄 / {print $5}'`
								echo "[*] Following: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<div class="col-auto d-none d-sm-block text-truncate">🏹 / {print $6}'`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://www.tiktok.com/@$username"
								;;
							3 )	echo
								read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								echo "[ADVERTENCIA] : NO FUNCIONA"
								;;
							4 )	echo
								read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								echo "[ADVERTENCIA] : NO FUNCIONA"
								;;
							5 )	echo
							read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://t.me/$username > requisitos/resultados/Tg-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Tg-$username.txt | awk '/<span dir="auto">/ {print}' | cut -c 47-  | rev | cut -c14- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Tg-$username.txt | awk '/<meta property="og:image" content="/ {print}' | cut -c 36-  | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://t.me/$username"
								;;
							6 )	echo
								read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://github.com/$username > requisitos/resultados/Git-$username.txt
								sleep 2
								sudo python3 requisitos/osgint/osgint.py -u $username
								;;
							99 ) exit
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
								bash netsoc_osint.sh
					esac
				echo
				echo
				echo "#####################"
				echo "[1] Volver a Ejecutar"
				echo "[2] Salir"
				echo "#####################"
				echo
				read -p "Elige una opcion: " opc3
					case $opc3 in
							1 )	bash netsoc_osint.sh
								;;
							2 )	exit
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
				;;
			2 )	clear
				echo
				echo "                                  ╔═╗ ╔╗  ╔╗╔═══╗     ╔═══╦═══╦══╦═╗ ╔╦════╗ "
				echo "                                  ║║╚╗║║ ╔╝╚╣╔═╗║     ║╔═╗║╔═╗╠╣╠╣║╚╗║║╔╗╔╗║ "
				echo "                                  ║╔╗╚╝╠═╩╗╔╣╚══╦══╦══╣║ ║║╚══╗║║║╔╗╚╝╠╝║║╚╝ "
				echo "                                  ║║╚╗║║║═╣║╚══╗║╔╗║╔═╣║ ║╠══╗║║║║║╚╗║║ ║║   "
				echo "                                  ║║ ║║║║═╣╚╣╚═╝║╚╝║╚═╣╚═╝║╚═╝╠╣╠╣║ ║║║ ║║   "
				echo "                                  ╚╝ ╚═╩══╩═╩═══╩══╩══╩═══╩═══╩══╩╝ ╚═╝ ╚╝   "
				echo "                                    ℕ𝕖𝕥𝕨𝕠𝕣𝕜    𝕊𝕠𝕔𝕚𝕒𝕝       🔍 𝕆𝕊𝕀ℕ𝕋 🔍         "
				echo "                              __________________________________________________"					
				echo "                                   ︻デ═一  Created by: XDeadHackerX  ︻デ═一 "
				echo "                                          Updated by Seb2lyon v1.1.1 "
				echo "          ---------------------------------------------------------------------------------------------"
				echo "                 Any action or activity related to 𝓝𝓮𝓽𝓢𝓸𝓬_𝓞𝓢𝓘𝓝𝓣 is solely your responsibility"
				echo "          ---------------------------------------------------------------------------------------------"
				echo
				echo
				echo "                                     ==============================="
				echo "                                     [1]         Instragram 🕵️""      |"
				echo "                                     [2]           TikTok 🕵️""        |"
				echo "                                     [3]           Twitter ""        |"
				echo "                                     [4]           Twitch ""         |"
				echo "                                     [5]          Telegram 🕵️""       |"
				echo "                                     [6]           GitHub 🕵️""        |"
				echo "                                     [99]   ------> Exit ""<------   |"
				echo "                                     ==============================="
				echo
				echo
				read -p "[*] Choose an option: " opc2
					case $opc2 in
							1 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: @$username"
								echo "#################################"
								echo
								wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.pixwox.com/profile/$username/ -O requisitos/resultados/Ig-$username.txt >/dev/null
								sleep 6
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Ig-$username.txt | awk '/"fullname">/ {print}' | cut -c 22- | rev | cut -c6- | rev`
								
								echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
								echo "[*] Followers: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
								echo "[*] Following: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
								echo "[*] Account Status(Empty = Public): " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
								echo
								echo "[*] URL Profile: https://www.instagram.com/$username"
								;;
							2 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://urlebird.com/es/user/$username/ > requisitos/resultados/TikTok-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
								echo "[*] Description: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
								echo "[*] Followers: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<div class="col-7 col-md-auto text-truncate">🦄 / {print $5}'`
								echo "[*] Following: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<div class="col-auto d-none d-sm-block text-truncate">🏹 / {print $6}'`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://www.tiktok.com/@$username"
								;;
							3 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								echo "[WARNING] : NOT WORKING"
								;;
							4 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								echo "[WARNING] : NOT WORKING"
								;;
							5 )	echo
							read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://t.me/$username > requisitos/resultados/Tg-$username.txt
								echo "[*] User: @$username"
								echo "[*] Name: " `cat requisitos/resultados/Tg-$username.txt | awk '/<span dir="auto">/ {print}' | cut -c 47-  | rev | cut -c14- | rev`
								echo
								echo "[*] Profile Photo: " `cat requisitos/resultados/Tg-$username.txt | awk '/<meta property="og:image" content="/ {print}' | cut -c 36-  | rev | cut -c3- | rev`
								echo
								echo "[*] URL Profile: https://t.me/$username"
								;;
							6 )	echo
								read -p "[*] Type the user name of the Target (e.g. anonymous23): " username
								echo
								echo "#################################"
								echo "[☢] UserName: $username"
								echo "#################################"
								echo
								curl -s https://github.com/$username > requisitos/resultados/Git-$username.txt
								sleep 2
								sudo python3 requisitos/osgint/osgint.py -u $username
								;;
							99 ) exit
								;;
							* )	echo
								echo "$RRPLY Not a valid option"
								bash netsoc_osint.sh
					esac
				echo
				echo
				echo "#####################"
				echo "[1] Return to Execute"
				echo "[2] Exit"
				echo "#####################"
				echo
				read -p "Choose an option: " opc3
					case $opc3 in
							1 )	bash netsoc_osint.sh
								;;
							2 )	exit
								;;
							* )	echo
								echo "$RRPLY Not a valid option"
					esac
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
