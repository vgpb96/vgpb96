#!/bin/bash
clear
echo -e "\n \e[1;34mScegliere la lingua d'installazione\e[0m | \e[1;34mPick installer's language\e[0m:\n\n \e[36mi\e[0m = \e[36mItaliano\e[0m\t<= default\n\n \e[36me\e[0m = \e[36mEnglish\e[0m\n"
read Language
Language="${Language,,}"
case "$Language" in
e*)
EnterYourUsername="Enter your ( \e[36muser\e[0m ) name"
Warning="WARNING"
NoUsername="You didn't provide any username"
EnterUserPass="Enter password for user"
NoDisplaying="( will not display entered )"
ReenterUserPass="Reenter password for user"
EnterRootPass="Enter password for \e[1;31mroot\e[0m"
ReenterRootPass="Reenter password for \e[1;31mroot\e[0m"
DisplayDisks="Available disks"
EnterDiskToPart="Enter which disk you wish to use and/or partition"
ToSkipPart="to skip partitioning just close cfdisk"
Without="WITHOUT"
And="and"
Eg="eg"
Numbers="numbers"
Error="ERROR"
YouPicked="You picked"
DiskAccessError="which cfdisk cannot access.\n Choose a disk again"
ViewPartitions="View of disk partitions"
EnterPartitionNumber="Enter \e[1;36mNUMBER\e[0m of disk partition for"
PartitionError="partition *MUST* be selected"
CheckInternet="Checking internet connection"
ConnectUsingWiFi="Would you like to use wifi connection"
Yn="Y/n"
NoInternet="There's no internet connection! \e[1;31m:(\e[0m Please, check the cable or your net device settings!
 This installation \e[1;37mNEEDS\e[0m internet conection to finish successfuly!"
ContinueOrCancel="Press \e[1;32mEnter\e[0m to continue or \e[1;31mCtrl\e[0m + \e[1;31mC\e[0m to cancel instalation"
PassEmpty="Password cannot be blank"
PassMismatch="Passwords do not match"
WhichKeyLayout="Which keyboard layout would you like to use"
Italian="Italian"
English="English"
Other="Other"
Wrong="Wrong"
SetItalian="Now you are using italian"
SetAmerican="Now you are using american"
KeyboardLayout="keyboard layout"
EnterKeyboardLayout="Enter keyboard layout you wish to use after installation"
GermanEg="for german layout"
LayoutAfterInstall="After installation, keyboard layout will be set to"
ToSkip="to skip, just press \e[1;32mEnter\e[0m"
ToFormat="Would you like to \e[1;31mformat"
Partition="partition"
HomeToExt="yes, to ext4\n\t\t( * WARNING * All data from"
WillBeErased="partition will be erased"
NoSepHomePart="no separate /home partition"
Yes="yes"
No="no"
NoSwapPart="swap partition not selected"
EnterHostName="Enter hostname ( no spaces, just \e[1;32mEnter\e[0m for"
EnterDE="Enter a letter beside the DE you wish to install"
IllPickLater="None. I'll install DE or WM later"
AutoLoginAs="Would you like to use autologin for"
AtLogin="at login"
NumLockOn="Would you like to have Num Lock turned on $AtLogin (doesn't work on Gnome (yet))"
WillBeOn="will be turned on"
WillBeOff="will be turned off"
NoDEorWMinstall="There won't be any DE or WM installation, so after base install you can\n do it by canceling reboot and reentering chroot enviroment manualy"
DEinstNotSel="No DE installaton selected"
ThisIsMobilePC="This PC is mobile (laptop or netbook)"
yN="y/N"
Overview="Important settings overview"
UserName="User name:\t"
HostName="Host name"
DiskPart="Disk partitions"
FormPart="Formating partitions"
YesTo="yes, to"
YesIfSel="yes ( if selected"
KeyLayout="Keyboard"
AllInfoIneed="That's it. I've got enough to proceed with the installation.\n"
AddFastMir="Adding 5 fastest mirrors. This will take a while.\n\n"
InstallEnd="INSTALLATION ENDED"
EnjoyWith="Enjoy with your new"
UnmountAllPart="Unmounting all partitions..."
RebootIn="Rebooting in 5 seconds..."
;;
*)
EnterYourUsername="Inserire ( \e[36mUtente\e[0m ) nome"
Warning="ATTENZIONE"
NoUsername="Nessun nome utente definito"
EnterUserPass="Inserire Password Utente"
NoDisplaying="( Nessuna visualizzazione )"
ReenterUserPass="Reinserire Password Utente"
EnterRootPass="Inserire Password \e[1;31mroot\e[0m Utente"
ReenterRootPass="Reinserire Password \e[1;31mroot\e[0m Utente"
DisplayDisks="Dischi Disponibili"
EnterDiskToPart="Inserire partizione desiderata"
ToSkipPart="Per saltare il partizionamento chiudere cfdisk"
Without="SENZA"
And="e"
Eg="eg"
Numbers="numeri"
Error="ERRORE"
YouPicked="Hai Scelto"
DiskAccessError="Cfdisk non può accedere.\n Scegliere nuovamente una partizione"
ViewPartitions="Partizioni disponibili"
EnterPartitionNumber="Inserire \e[1;36mNUMERI\e[0m per la partizione"
PartitionError="la partizione *DEVE* essere selezionata"
CheckInternet="Controllando la connessione internet"
ConnectUsingWiFi="Connettere utilizzando il Wifi"
Yn="S/n"
NoInternet="Nessuna connessione trova! \e[1;31m:(\e[0m Controllare cavo o impostazioni di rete!
 Per continuare l'installazione è \e[1;37mNECESSARIA\e[0m una connessione internet"
ContinueOrCancel="Premere \e[1;32mEnter\e[0m per continuare o \e[1;31mCtrl\e[0m + \e[1;31mC\e[0m per terminare l'installazione"
PassEmpty="Nessuna Password Definita"
PassMismatch="Le Password Non Corrispono"
WhichKeyLayout="Quale layout di tastiera ( keyboard layout ) utilizzare"
Italian="Italiano"
English="Inglese"
Other="Altro"
Wrong="Sbagliato"
SetItalian="Impostato in Italiano"
SetAmerican="Impostato in Inglese"
KeyboardLayout="layout di tastiera"
EnterKeyboardLayout="Inserire quale layout di tastiera utilizzare dopo l'installazione"
GermanEg="per layout tedesco"
LayoutAfterInstall="Dopo l'installazione il layout di tastiera verrà impostato in"
ToSkip="Per saltare, premere \e[1;32mEnter\e[0m"
ToFormat="Vuoi \e[1;31mformattare"
Partition="partizione"
HomeToExt="si, per ext4\n\t\t( * ATTENZIONE * Ogni file della"
WillBeErased="partizione sarà eliminato"
NoSepHomePart="non separare /home partizione"
Yes="si"
No="no"
NoSwapPart="partizione swap non selezionata"
EnterHostName="Inserire un hostname ( niente spazi, solo \e[1;32mEnter\e[0m per"
EnterDE="Inserire una lettera a fianco al DE che si vuole installare"
IllPickLater="No. Installare un DE o un WM più tardi"
AutoLoginAs="Si vuole utilizzare l'autologin per"
AtLogin="al login"
NumLockOn="Attivare il NumLock $AtLogin (non funzionante con Gnome (ancora))"
WillBeOn="Sarà attivato"
WillBeOff="Sarà disattivato"
NoDEorWMinstall="Nessun DE o WM verrà installato\n Terminata l'installazione, al riavvio, sarà possibile installarne uno"
DEinstNotSel="Nessuna installazione del DE selezionata"
ThisIsMobilePC="Questo è un PC fisso"
yN="S/N"
Overview="Overview di un'impostazione importante"
UserName="Nome Utente:"
HostName="HostName"
DiskPart="Partizione Disco"
FormPart="Formattazione Partizione"
YesTo="si, per"
YesIfSel="si ( se selezionato"
KeyLayout="Layout tastiera"
AllInfoIneed="Questo è tutto. Ho abbastanza informazioni per procedere con l'installazione.\n"
AddFastMir="Sto aggiungendo altri 5 mirror veloci. Servirà un pò di tempo.\n\n"
InstallEnd="INSTALLAZIONE TERMINATA"
EnjoyWith="Goditi il tuo nuovo sistema"
UnmountAllPart="Rimozione dei dispositivi..."
RebootIn="Riavvio in 5 secondi..."
;;
esac
X11Layouts="af al am ara at az ba bd be bg br brai bt bw by ca cd ch cm cn cz de dk ee epo es et fi fo fr gb ge gh gn gr hr hu ie il in iq ir is it jp ke kg kh kr kz la latam lk lt lv ma mao md me mk ml mm mn mt mv nec_vndr/jp ng nl no np ph pk pl pt ro rs ru se si sk sn sy th tj tm tr tw tz ua us uz vn za"
#==============================================================================#
function ENTER_KEYBOARD_LAYOUT {
clear
echo -e "\n $EnterKeyboardLayout\n\t( $Eg.\e[1;36m DE\e[0m $GermanEg )\n"
read Layout
Layout="${Layout,,}"
case "$X11Layouts" in
*$Layout*)
 echo -e "\n $LayoutAfterInstall \e[1;36m${Layout^^}\e[0m" && CONTINUE_OR_CANCEL
;;
*)
 echo -e "\n \e[31m*** $Error ***\e[0m\n\n $Wrong $KeyboardLayout!\n"
 sleep 2
 ENTER_KEYBOARD_LAYOUT
;;
esac
}

function USER_NAME {
clear
echo -e "\n $EnterYourUsername:\n"
read Utente
Utente="${Utente%% *}" # Lasciare solo la prima parola
Utente="${Utente,,}" # Conversione in minuscolo
clear
if [ "$Utente" = "" ]; then
 echo -e "\n \e[1;36m* $Warning *\e[0m\n $NoUsername...\n"
 CONTINUE_OR_CANCEL
 USER_NAME
fi
}

function ENTER_USER_PASS {
clear
Password1=""
Password2=""
echo -e "\n $EnterUserPass \e[1;36m$Utente\e[0m $NoDisplaying:"
stty -echo
read Password1
stty echo
if [ "$Password1" = "" ]; then
 PASSWORD_EMPTY
 ENTER_USER_PASS
fi
echo -e "\n $ReenterUserPass \e[1;36m$Utente\e[0m $NoDisplaying:"
stty -echo
read Password2
stty echo
if [ "$Password1" = "$Password2" ]; then
 PasswordUtente="$Password1
$Password2"
else
 PASSWORD_MISMATCH
 ENTER_USER_PASS
fi
}

function ENTER_ROOT_PASS {
clear
Password3=""
Password4=""
echo -e "\n $EnterRootPass $NoDisplaying:"
stty -echo
read Password3
stty echo
if [ "$Password3" = "" ]; then
 PASSWORD_EMPTY
 ENTER_ROOT_PASS
fi
echo -e "\n $ReenterRootPass $NoDisplaying:"
stty -echo
read Password4
stty echo
if [ "$Password3" = "$Password4" ]; then
 RootPassword="$Password3
$Password4"
else
 PASSWORD_MISMATCH
 ENTER_ROOT_PASS
fi
}

function PARTITIONING {
clear
echo -e "\n $DisplayDisks:"
lsblk | grep -v "rom\|loop\|airoot"
echo -e "\n $EnterDiskToPart ( $Without \e[35m/dev/\e[0m $And $Without \e[35m$Numbers\e[0m, $Eg. \e[36msda\e[0m, $ToSkipPart ):\n"
read Disk
Disk="${Disk,,}"
Disk="${Disk//'/dev/'/}" # Rimuovere /dev/ (solo se necessario)
cfdisk /dev/$Disk
if [ $? != 0 ]; then
 clear
 echo -e "\n \e[1;31m* $Error *\e[0m\n\n $YouPicked \"$Disk\" disk $DiskAccessError!\n"
 CONTINUE_OR_CANCEL
 PARTITIONING
fi
}

function SEL_ROOT_PARTITION {
clear
echo -e "\n $ViewPartitions \e[1;33m/dev/$Disk\e[0m\n"
lsblk /dev/$Disk
echo -e "\n $EnterPartitionNumber / ( root )\n\t( $Without \e[1;33m/dev/$Disk\e[0m, $Eg. \e[36m 1 \e[0m):"
read RootPart
RootPart="${RootPart//'/dev/$Disk'/}" # Solo se necessario 
if [ "$RootPart" = "" ]; then
 clear
 echo -e "\n \e[1;31m* $Error *\e[0m\n\n Root $PartitionError!\n"
 CONTINUE_OR_CANCEL
 SEL_ROOT_PARTITION
fi
}

function NET_DEVICE {
ln -sf /dev/null /etc/udev/rules.d/80-net-name-slot.rules # Rinominare i dispositivi di rete
clear
echo -e "\n $CheckInternet...\n"
ping -c2 google.com
if [ $? != 0 ]; then
 echo -e "\n $ConnectUsingWiFi? ( $Yn )"
 read Connessione
 Connessione="${Connessione,,}"
 case "$Connessione" in
 d*|y*)
  wifi-menu -o
 ;;
 esac
 sleep 2 && ping -c2 google.com
 if [ $? != 0 ]; then
  echo -e "\n \e[1;31m* $Error *\e[0m\n\n $NoInternet.\n"
  CONTINUE_OR_CANCEL
  NET_DEVICE
 fi
fi
}

function CONTINUE_OR_CANCEL {
echo -e " $ContinueOrCancel..."
read -p ""
}

function PASSWORD_EMPTY {
clear
echo -e "\n \e[1;31m* $Error *\e[0m\n\n $PassEmpty!\n"
CONTINUE_OR_CANCEL
}

function PASSWORD_MISMATCH {
clear
echo -e "\n \e[1;31m* $Error *\e[0m\n\n $PassMismatch!\n"        
CONTINUE_OR_CANCEL
}
#==============================================================================#
setfont Lat2-Terminus16 # Impostazione dei font
clear
echo -e "\n\e[36m *******************************************************************************\n\t$Welcome \e[0m
\e[1;36m
    HHHHH      HHHHH
   HHHHHHHH  HHHHHHHH
   HHHHHHHHHHHHHHHHHH                                 
   HHHHHHHHHHHHHHHHHH
   HHHHHHHHHHHHHHHHHH                                   
    HHHHHHHHHHHHHHHH
     HHHHHHHHHHHHHH                                      
      HHHHHHHHHHHH                                    
       HHHHHHHHHH
         HHHHHH
          HHHH
 \e[0m\n
 $WhichKeyLayout?\n\n \e[36mi\e[0m = \e[36m$Italian\e[0m\t( IT ) <= default\n\n \e[36me\e[0m = \e[36m$English\e[0m\t( US )\n\n \e[36mo\e[0m = \e[36m$Other\e[0m\t( ?? )\n"
read Scorciatoie
case "$Scorciatoie" in
i*|"")
 loadkeys it # Impostare il layout di tastiera in italiano
 Layout="it"
 echo -e "\n \e[1;36mINFO:\e[0m $SetItalian (\e[1;36m IT \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
e*)
 loadkeys us # Impostare il layout di tastiera in inglese
 Layout="us"
 echo -e "\n \e[1;36mINFO:\e[0m $SetAmerican (\e[1;36m US \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
*)
 loadkeys us # Impostare il layout di tastire in inglese
 Layout="?"
 echo -e "\n \e[1;36mINFO:\e[0m $SetAmerican (\e[1;36m US \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
esac
clear
if [ "$Layout" = "?" ]; then
 ENTER_KEYBOARD_LAYOUT
fi
USER_NAME
ENTER_USER_PASS
ENTER_ROOT_PASS
PARTITIONING
SEL_ROOT_PARTITION
echo -e "\n $EnterPartitionNumber /home\n\t( $Without \e[1;33m/dev/$Disk\e[0m, $ToSkip ):"
read HomePart
HomePart="${HomePart//'/dev/$Disk'/}" # Solo se necessario
if [ "$HomePart" != "" ]; then
 echo -e "\n\t$ToFormat\e[0m /home ( /dev/\e[1;36m$Disk$HomePart\e[0m ) $Partition? ( $Yn )"
 read Formattazione
 Formattazione="${Formattazione,,}"
fi
case "$Formattazione" in # È necessario per le informazioni prima di procedere con l'installazione
d*|y*|"")
 if [ "$HomePart" != "" ]; then
  Formattare="$HomeToExt /dev/$Disk$HomePart $WillBeErased! )"
 else
  Formattare="\e[32m$NoSepHomePart\e[0m"
 fi
;;
*)
 Formattare="$No"
;;
esac
echo -e "\n $EnterPartitionNumber swap\n\t( $Without \e[1;33m/dev/$Disk\e[0m, $ToSkip ):"
read SwapPart
SwapPart="${SwapPart//'/dev/$Disk'/}" # Solo se necessario
if [ "$HomePart" = "" ]; then
 Home=" Home: /dev/$Disk$RootPart ( $NoSepHomePart )"
else
 Home=" Home: /dev/$Disk$HomePart"
fi
if [ "$SwapPart" = "" ]; then
 Swap=" Swap: ništa ( $NoSwapPart )"
else
 Swap=" Swap: /dev/$Disk$SwapPart"
fi
clear
echo -e "\n $EnterHostName \e[36marchlinux\e[0m ):\n"
read Hostname
Hostname="${Hostname// /}" # Rimuovere gli spazi
Hostname="${Hostname//'@'/AT}" # Sostituire il carattere @
if [ "$Hostname" = "" ]; then
 Hostname="archlinux"
fi
NET_DEVICE
clear
echo -e "\n $EnterDE:\n\n \e[36mN\e[0m = \e[36m$IllPickLater\e[0m <= default\n\n \e[36mG\e[0m = \e[36mGNOME\n
 M\e[0m = \e[36mMATE\n\n X\e[0m = \e[36mXfce\n\n L\e[0m = \e[36mLXDE\e[0m\n E\e[0m = \e[36ENLIGHTENMENT\n\n"
read DEInst
DEInst="${DEInst,,}"
case "$DEInst" in
g*|m*|x*|l*|e*)
 clear
 echo -e "\n $AutoLoginAs \e[1;36m$Utente\e[0m? ( $yN )"
 read AutoLogin
 AutoLogin="${AutoLogin,,}"
 echo -e "\n $NumLockOn? ( $Yn )"
 read NumLock
 NumLock="${NumLock,,}"
 case "$NumLock" in
 d*|y*|"")
  NumLock="$Yes ( $WillBeOn $AtLogin )"
 ;;
 *)
  NumLock="$No ( $WillBeOff $AtLogin )"
 ;;
 esac
;;
*)
 echo -e "\n \e[1;36mINFO:\e[31m $NoDEorWMinstall. ;)\e[0m\n"
 NumLock="$No ( $DEinstNotSel )" 
 CONTINUE_OR_CANCEL
;;
esac
echo -e "\n $ThisIsMobilePC? ( $yN )"
read Laptop
Laptop="${Laptop,,}"
case "$Laptop" in
d*|y*)
 TouchpadDriver=" xf86-input-synaptics libsynaptics"
;;
esac
clear
echo -e "\n $Overview:\n\n $UserName \e[36m$Utente\e[0m\n $HostName:\t \e[36m$Hostname\e[0m\n\n $DiskPart:\n
  \e[36mRoot: /dev/$Disk$RootPart\n $Home\n $Swap\e[0m\n\n $FormPart:\n
  /\t\t\e[36m$YesTo ext4\e[0m\n  /home\t\t\e[1;31m$Formattare\e[0m\n  swap\t\t\e[36m$YesIfSel )\e[0m\n
 $KeyLayout:\t\e[1;36m${Layout^^}\e[0m\n Num Lock:\t\e[1;32m$NumLock\e[0m\n\n $AllInfoIneed. ;)\n"
CONTINUE_OR_CANCEL
clear
echo -e "\n Formattazione partizione...\n"
umount /dev/$Disk$RootPart 2>/dev/null 
mkfs.ext4 -Fq /dev/$Disk$RootPart
if [ "$HomePart" != "" ]; then
 case "$Formatto" in
 d*|y*|"")
  echo -e "\n Formattare /dev/$Disk$HomePart..."
  umount /dev/$Disk$HomePart 2>/dev/null
  mkfs.ext4 -Fq /dev/$Disk$HomePart
 ;;
 esac
fi
if [ "$SwapPart" != "" ]; then
 mkswap /dev/$Disk$SwapPart
fi
echo -e "\n Sto montando la partizione root (/dev/$Disk$RootPart)...\n"
mount /dev/$Disk$RootPart /mnt
if [ $? != 0 ]; then
 echo -e "\n \e[1;31m* $Error *\e[0m\n\n Premere \e[1;32mEnter\e[0m per continuare...\n Press \e[1;32mEnter\e[0m to continue...\n\n"
 read -p ""
fi
if [ "$HomePart" != "" ]; then
 echo -e "\n Creazione cartella /mnt/home..."
 mkdir /mnt/home
 echo -e "\n Sto montando la partizione home (/dev/$Disk$HomePart)...\n"
 mount /dev/$Disk$HomePart /mnt/home
 if [ $? != 0 ]; then
  echo -e "\n \e[1;31m* $Error *\e[0m\n\n Premere \e[1;32mEnter\e[0m per continuare...\n Press \e[1;32mEnter\e[0m to continue...\n\n"
  read -p ""
 fi
fi
if [ "$SwapPart" != "" ]; then
 echo -e "\n Sto montando la partizione dello swap (/dev/$Disk$SwapPart)...\n"
 swapon /dev/$Disk$SwapPart
 if [ $? != 0 ]; then
  echo -e "\n \e[1;31m* $Error *\e[0m\n\n Premere \e[1;32mEnter\e[0m per continuare...\n Press \e[1;32mEnter\e[0m to continue...\n\n"
  read -p ""
 fi
fi
clear
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup # Scarico i mirrorlist
sed '/^#\S/ s|#||' -i /etc/pacman.d/mirrorlist.backup # Selezione i mirror più veloci
echo -e "\n $AddFastMir"
rankmirrors -n 5 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist #| watch -t tail -n 5 /etc/pacman.d/mirrorlist 
clear
echo -e "\n Modifico pacman in modalità live..\n"
sed -i 's/#Color/Color/' /etc/pacman.conf
echo -e "\n Aggiorno il portachiavi...\n"
pacman -Sy --noconfirm archlinux-keyring
echo -e "\n Installazione base del sistema...\n"
pacstrap /mnt base base-devel
if [ $? != 0 ]; then
 echo -e "\n \e[1;31m* $Error *\e[0m\n\n Premere \e[1;32mEnter\e[0m za nastavak...\n Press \e[1;32mEnter\e[0m to continue...\n\n"
 read -p ""
fi
echo -e "\n Generazione file fstab...\n"
genfstab -p /mnt | sed 's/rw,relatime,data=ordered/defaults,relatime/' >> /mnt/etc/fstab
#==============================================================================#
echo "#!/bin/bash
ln -s /dev/null /etc/udev/rules.d/80-net-name-slot.rules
echo \"$RootPassword\" > /tmp/rootpass
passwd < /tmp/rootpass
rm -f /tmp/rootpass
useradd -m -g users -G wheel,storage,power -s /bin/bash $Utente
echo \"$NomeUtente\" > /tmp/userpass
passwd $Utente < /tmp/userpass
rm -f /tmp/userpass
echo -e \"\n Modifico il file pacman.conf...\"
sed -i 's/#Color/Color/g' /etc/pacman.conf
echo -e \"\n Genero le lingue...\"
sed -i 's/#en_US/en_US/g' /etc/locale.gen
sed -i 's/#it_IT/it_IT/g' /etc/locale.gen
locale-gen
echo \"LANG=en_US.UTF-8\" > /etc/locale.conf
export LANG=en_US.UTF-8
echo \"LANG=it_IT.UTF-8\" > /etc/locale.conf
export LANG=it_IT.UTF-8
echo -e \"\n Creo il file vconsole.conf per il keymap...\"
echo -e \"KEYMAP=it\" > /etc/vconsole.conf 
echo -e \"\n Imposto il fuso orario...\"
ln -s /usr/share/zoneinfo/Europe/Rome /etc/localtime
echo -e \"\n Imposto l' hwclock...\"
hwclock --systohc --utc
echo -e \"\n Imposto l'hostname...\"
echo \"$Hostname\" > /etc/hostname
pacman-db-upgrade # Fix za starije iso datoteke
pacman -Sy --noconfirm alsa-firmware alsa-plugins alsa-utils bc dialog dnsmasq dosfstools firefox flac flashplugin gksu grub-bios gstreamer0.10-plugins gvfs lshw mtools net-tools network-manager-applet networkmanager-dispatcher-ntpd ntfs-3g ntp openssh os-prober p7zip perl-data-dump pulseaudio pulseaudio-alsa ttf-dejavu ttf-droid unrar unzip wget wireless_tools wpa_actiond wpa_supplicant xcursor-vanilla-dmz xdg-user-dirs xf86-input-keyboard xf86-input-mouse xf86-video-ati xf86-video-fbdev xf86-video-intel xf86-video-nouveau xf86-video-nv xf86-video-sis xf86-video-vesa xorg-server xorg-server-utils xorg-xclock xorg-xinit xterm vorbis-tools cups cups-pdf cups-filters print-manager foomatic-db foomatic-db-engine foomatic-db-nonfree samba splix hplip blueman bluez-utils bluez libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src zip$TouchpadDriver
if [ \$? != 0 ]; then
 echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
 read -p \"\"
fi
echo -e \"\n Aggiungo OpenSSH al sistema...\"
systemctl enable sshd
systemctl enable bluetooth.service
systemctl enable org.cups.cupsd.service
echo -e \"\n Imposto il formato della tastiera $Layout layout...\"
echo -e \"Section \\\"InputClass\\\"\n\tIdentifier \\\"system-keyboard\\\"\n\tMatchIsKeyboard \\\"on\\\"\n\tOption \\\"XkbModel\\\" \\\"pc105\\\"
\tOption \\\"XkbLayout\\\" \\\"$Layout\\\"\n\tOption \\\"XkbVariant\\\" \\\"\\\"\nEndSection\" > /etc/X11/xorg.conf.d/20-keyboard.conf
echo -e \"\n Configurazione gvfs...\"
echo -e \"polkit.addRule(function(action, subject) {\n\tif (action.id.indexOf(\\\"org.freedesktop.udisks2.\\\") == 0){\n\t\treturn polkit.Result.YES;\n\t}\n});\" > /usr/share/polkit-1/rules.d/10-drives.rules
echo -e \"\n Redazione ntp.conf...\"
sed -i 's/pool.ntp.org/pool.ntp.org iburst/g' /etc/ntp.conf
sed -i 's/www.pool.ntp.org iburst/www.pool.ntp.org/g' /etc/ntp.conf # Fix za link
echo -e \"\n Impostazione data e ora...\"
ntpd -qg
hwclock -w
case \"$DEInst\" in
g*|m*|x*|l*)
 echo -e \"\n Installazione gnome-keyring e temi gnome-themes-standard...\"
 pacman -Sy --noconfirm gnome-keyring gnome-themes-standard
 if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
 echo -e \"\n Consulto l'uso del gnome-keyring...\"
 echo -e \"#!/bin/bash\n\nsource /etc/X11/xinit/xinitrc.d/30-dbus\neval \\\$(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)\nexport SSH_AUTH_SOCK\" > /home/$Utente/.xinitrc
;;
esac
echo -e \"\n Supplemento per .xinitrc...\"
echo -e \"\nif [ -d /etc/X11/xinit/xinitrc.d ]; then\n for f in /etc/X11/xinit/xinitrc.d/*; do\n   [ -x \\\"\\\$f\\\" ] && . \\\"\\\$f\\\"\n done\n unset f\nfi\n\" >> /home/$Utente/.xinitrc
echo -e \"\n Configuro il Network Manager...\"
systemctl enable NetworkManager
systemctl enable NetworkManager-dispatcher.service && systemctl enable ModemManager.service
echo -e \"\n Dodajem korisnika $Utente u network grupu...\"
gpasswd -a $Utente network
echo -e \"\n Dodajem policy...\"
echo -e \"polkit.addRule(function(action, subject) {\n\tif (action.id.indexOf(\\\"org.freedesktop.NetworkManager.\\\") == 0 && subject.isInGroup(\\\"network\\\")) {
	\treturn polkit.Result.YES;\n\t}\n});\" > /etc/polkit-1/rules.d/50-org.freedesktop.NetworkManager.rules
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers # ...and sudo for all
case \"$DEInst\" in
g*)
 echo -e \"\n Avvio installazione GNOME...\"
 pacman -Sy --noconfirm gnome gnome-extra vlc libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src
 if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
 systemctl enable gdm.service
 echo -e \"exec gnome-session\" >> /home/$Utente/.xinitrc
;;
m*)
 echo -e \"\n Avvio installazione MATE...\"
 pacman -Sy --noconfirm deadbeef gtk-engine-murrine lxdm mate mate-extra vlc zenity libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src
 if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
 systemctl enable lxdm.service
 sed -i 's/# session/session/g' /etc/lxdm/lxdm.conf
 sed -i 's/startlxde/mate-session/g' /etc/lxdm/lxdm.conf
 echo -e \"exec mate-session\" >> /home/$Utente/.xinitrc
;;
x*)
 echo -e \"\n Avvio installazione Xfce4 DE...\"
 pacman -Sy --noconfirm deadbeef lxdm thunar-archive-plugin thunar-volman xarchiver xfce4 xfce4-goodies xfce4-notifyd vlc zenity libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src
 if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
 systemctl enable lxdm.service
 sed -i 's/# session/session/g' /etc/lxdm/lxdm.conf
 sed -i 's/startlxde/startxfce4/g' /etc/lxdm/lxdm.conf
 echo -e \"\n Modifico le icone del desktop Xfce4 DE...\"
 echo -e \"style \\\"xfdesktop-icon-view\\\" {\n\tXfdesktopIconView::label-alpha = 0
	XfdesktopIconView::shadow-x-offset = 1\n\tXfdesktopIconView::shadow-y-offset = 1
	XfdesktopIconView::shadow-color = \\\"#000000\\\"\n\tXfdesktopIconView::selected-shadow-x-offset = 0
	XfdesktopIconView::selected-shadow-y-offset = 0\n\tXfdesktopIconView::selected-shadow-color = \\\"#000000\\\"
	fg[NORMAL] = \\\"#ffffff\\\"\n\tfg[SELECTED] = \\\"#ffffff\\\"\n\tfg[ACTIVE] = \\\"#ffffff\\\" }
	widget_class \\\"*XfdesktopIconView*\\\" style \\\"xfdesktop-icon-view\\\"\" >> /home/$Utente/.gtkrc-2.0
 echo -e \"exec startxfce4\" >> /home/$Utente/.xinitrc
;;
l*)
 echo -e \"\n Avvio installazione LXDE...\"
 pacman -Sy --noconfirm galculator gnome-mplayer leafpad lxde lxdm obconf xarchiver vlc zenity libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src
 if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premer Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
 systemctl enable lxdm.service
 echo -e \"exec startlxde\" >> /home/$Utente/.xinitrc
;;
e*) 
echo -e \"\n avvio installazione ENLIGHTENMENT...\"
 pacman -Sy --noconfirm enlightenment connman terminology gdm vim vlc libreoffice-still gimp jre8-openjdk jdk8-openjdk openjdk8-doc openjdk-src java-openjfx java-openjfx-doc java-openjfx-src
 if [ \$? != 0 ]; then
  echo -e \"\n $Errore *\n\n Premere Invio per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
 fi
systemctl disable NetworkManager
systemctl enable connman.service 
systemctl enable gdm.service
 echo -e \"exec enlightenment_start\" >> /home/$Utente/.xinitrc
;;
*)
 echo -e \"\n \e[1;36mINFO:\e[31m $DEinstNotSel!\e[0m\"
;;
esac
case \"$NumLock\" in
d*)
 echo -e \"\n Attivazione NumLock...\"
 if [ -e /usr/share/config/kdm/kdmrc ]; then
  sed -i 's/#NumLock=Off/NumLock=On/g' /usr/share/config/kdm/kdmrc
 fi
 if [ -e /etc/lxdm/lxdm.conf ]; then
  sed -i 's/# numlock=0/numlock=1/g' /etc/lxdm/lxdm.conf
 fi
;;
esac
if ! [ -d /home/$Utente/Documents ]; then # Aggiunta della posizione
 mkdir /home/$Utente/Documents
fi
if ! [ -d /home/$Utente/Downloads ]; then
 mkdir /home/$Utente/Downloads
fi
if ! [ -d /home/$Utente/Music ]; then
 mkdir /home/$Utente/Music
fi
if ! [ -d /home/$Utente/Pictures ]; then
 mkdir /home/$Utente/Pictures
fi
if ! [ -d /home/$Utente/Public ]; then
 mkdir /home/$Utente/Public
fi
if ! [ -d /home/$Utente/Templates ]; then
 mkdir /home/$Utente/Templates
fi
if ! [ -d /home/$Utente/Videos ]; then
 mkdir /home/$Utente/Videos
fi
echo -e \"\n Aggiunta di alias...\"
echo -e \"alias la='ls -a'\nalias ll='ls -la'\nalias grep='grep --color=auto'\" >> /etc/bash.bashrc
echo -e \"\n Assegno proprietà /home/$Utente cartelle $Utente...\"
chown -R $Utente /home/$Utente
echo -e \"\n Radim xdg-user-dirs-update...\"
xdg-user-dirs-update --force --set DOCUMENTS /home/$Utente/Documents # Aggiornamento xdg-user-dirs
xdg-user-dirs-update --force --set DOWNLOAD /home/$Utente/Downloads
xdg-user-dirs-update --force --set MUSIC /home/$Utente/Music
xdg-user-dirs-update --force --set PICTURES /home/$Utente/Pictures
xdg-user-dirs-update --force --set PUBLICSHARE /home/$Utente/Public
xdg-user-dirs-update --force --set TEMPLATES /home/$Utente/Templates
xdg-user-dirs-update --force --set VIDEOS /home/$Utente/Videos
case \"$AutoLogin\" in
d*|y*)
 echo -e \"\n Installazione autologin...\"
 if [ -e /usr/share/config/kdm/kdmrc ]; then
  sed -i 's/#AutoLoginUser=fred/AutoLoginUser=$Utente/g' /usr/share/config/kdm/kdmrc
  sed -i 's/#AutoLoginEnable/AutoLoginEnable/g' /usr/share/config/kdm/kdmrc
 fi
 if [ -e /etc/gdm/custom.conf ]; then
  sed -i '/daemon/ a\AutomaticLogin=$Utente\nAutomaticLoginEnable=True' /etc/gdm/custom.conf 
 fi
 if [ -e /etc/lxdm/lxdm.conf ]; then
  sed -i 's/# autologin=dgod/autologin=$Utente/g' /etc/lxdm/lxdm.conf
 fi
;;
esac
echo -e \"\n Installo GRUB bootloader...\"
grub-install --target=i386-pc --recheck /dev/$Disk
if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare Crtl + C per uscire...\n Press Enter to continue or Ctrl + C to cancel...\n\n\"
  read -p \"\"
fi
echo -e \"\n Copio il messaggio di GRUB...\"
cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare...\n Press Enter to continue...\n\n\"
  read -p \"\"
fi
echo -e \"\n Configurazione GRUB bootloader...\"
grub-mkconfig -o /boot/grub/grub.cfg
if [ \$? != 0 ]; then
  echo -e \"\n $Error *\n\n Premere Enter per continuare o Crtl + C per uscire...\n Press Enter to continue or Ctrl + C to cancel...\n\n\"
  read -p \"\"
fi
rm -f /root/.bashrc
rm -f /etc/ArchChroot" > /mnt/etc/ArchChroot
#==================================================================================================#
echo -e "sh /etc/ArchChroot\nexit" > /mnt/root/.bashrc
arch-chroot /mnt /bin/bash
clear
echo -e "\n $UnmountAllPart"
umount -R /mnt
swapoff -a
echo -e "\n\e[36m*********************************\n*\t\e[37m$InstallEnd\e[36m\t*\n*********************************\e[0m\n\n $EnjoyWith \e[1;36mArch Linux \e[1;33m:)\e[0m\n"
sleep 5 | echo -e "\n $RebootIn"
reboot
Up
