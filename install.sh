#!/bin/bash
BOLD="\033[01;01m"     # Highlight
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
RESET="\033[00m"
echo ""


echo "================ LETS START INSTALLING SOME ESSENTIAL STUFFS ===================="

echo "==========================  FOR ONLY BEGINERS ========================"
 echo -e " $RED****************coded by @mrAnonyMous*****************"                           

# Dont release with ur own names

# This script will help you to install all essential tool for start hacking with kali

echo -e " $YELLOW >>>>>>>>>>>>Welcome to Mr_AnonyMous_DO_IT_FOR_ME,Do you want to Continue: (yes) \c"

read YES

if [ "$YES" ];
then
	apt-get update
	sudo apt full-upgrade
	apt-get upgrade
	apt-get install git
	apt-get install apktool
	apt-get install default-jdk
	apt-get install python3
	apt-get install python
	apt-get install python-pip
	apt-get install python3-pip
	apt-get install libzopfli1
	apt --fix-broken install
fi

if [  -e /usr/bin/msfvenom ]; then
    echo -e $GREEN "[ ✔ ] Msfvenom ................[ found ]"
else 
	echo -e $RED "[ X ] Msfvenom -> not found "
	echo -e "\n [*] ${YELLOW} Installing Metasploit-framework ${RESET}\n"
	sudo apt-get install metasploit-framework 
	 
	
fi

if [  -e /usr/bin/wine ]; then
    echo -e $GREEN "[ ✔ ] Wine ....................[ found ]"
else 
	echo -e $RED "[ X ] Wine -> not found "
      	sudo apt-get -qq update
	echo -e "\n [*] ${YELLOW}Adding x86 architecture to x86_64 system for Wine${RESET}\n"
      	sudo dpkg --add-architecture i386
      	sudo apt-get -qq update
	sudo apt-get install wine

fi

if [  -e /usr/bin/x86_64-w64-mingw32-gcc ]; then
    echo -e $GREEN "[ ✔ ] Mingw-w64 Compiler.......[ found ]"
else 
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib
deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
	echo -e $RED "[ X ] Mingw-w64 -> not found "
	#sudo apt-get install mingw-w64 mingw32 -y
	sudo apt-get install mingw-w64 mingw32 --force-yes -y

fi



echo -e " $YELLOW >>>>>>>>>>>We are installing zipalign,(yes/no)and press ENTER to skip \c"

read yes

if [ "$yes" ]

then
	wget http://ftp.br.debian.org/debian/pool/main/a/android-platform-build/zipalign_8.1.0+r23-2_amd64.deb


fi

echo -e   "$GREEN ########## dont forget to exctract ziplign ############"
echo -e "  $GREEN ########## use this command dpkg -i zipalign_8.1.0+r23-2_amd64.deb ########"
echo -e "  $GREEN ########## note '8.1.0+r23-2' IS DEPEND WITH YOUR ZIPALIGN VERSION ########"

echo -e " $YELLOW >>>>>>>>>>>continueeeeeee? (yes..) \c" 

read yes

if [ "$yes" ]
then
	apt-get install libzopfli1
	apt --fix-broken install


fi

if [  -e /usr/bin/shellter ]; then
    echo -e $GREEN "[ ✔ ] shellter ................[ found ]"
else 
	echo -e $RED "[ X ] shellter -> not found "
	echo -e "\n [*] ${YELLOW} Installing amazing encoder for bypass Antivirus ${RESET}\n"
	sudo apt-get install shellter
fi 

if [  -e /usr/bin/apktool ]; then
    echo -e $GREEN "[ ✔ ] apktool ................[ found ]"
else 
	echo -e $RED "[ X ] apktool -> not found "
	echo -e "\n [*] ${YELLOW} Installing apktool ....wait ${RESET}\n"
	sudo apt-get install apktool
fi 

if [  -e /usr/bin/zipalign ]; then
    echo -e $GREEN "[ ✔ ] zipalign ................[ found ]"
else 
	echo -e $RED "[ X ] zipalign -> not found "
	echo -e "\n [*] ${YELLOW} Installing zipalign wait please ${RESET}\n"
	wget http://ftp.br.debian.org/debian/pool/main/a/android-platform-build/zipalign_8.1.0+r23-2_amd64.deb

fi 

if [ -e /usr/bin/netcat ]; then
    echo -e $GREEN "[ ✔ ] netcat ................[ found ]"
else
	echo -e $RED "[ X ] netcat -> not found "
	echo -e "\n [*] ${YELLOW} we r installing netcat ....cool? ${RESET}\n"
	sudo apt-get install netcat
fi

if [ -e /usr/bin/nethogs goaccess ]; then
    echo -e $GREEN "[ ✔ ] nethogs goaccess ................[ found ]"
else
	echo -e $RED "[ X ] nethogs goaccesst -> not found "
	echo -e "\n [*] ${YELLOW} we r installing nethogs goaccess ....cool? ${RESET}\n"
	sudo apt-get install nethogs goaccess
	 
fi

echo "";
    echo "[✔] all Tools installed successfully! [✔]";
    echo "";
    echo "[✔]==========================================================================[✔]";
    echo "[✔]      All is done!! KARIBU  \"HAPPY HACKING...\"    [✔]";
    echo "[✔]==========================================================================[✔]";
    echo "";

  echo -e "$GREEN DONT FORGET TO FOLLOW ME https://www.youtube.com/channel/UC5SpJc-fVZ5Kb6ZHfAoZ9Sw"

exit 0






