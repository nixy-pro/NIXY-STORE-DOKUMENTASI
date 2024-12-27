#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Develovers » NIXY Project
# telegram   » https://nixy_store
# whatsapp   » wa.me/+6281324481206
# Email      » info@nixystore.my.id
# System Request : Debian 9+/Ubuntu 18.04+/20+
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# NIXY Project

clear
y='\033[1;33m'
BGX="\033[42m"
CYAN="\033[96m"
z="\033[95;1m"
f="\033[1;97;41m"
G="\033[92m"
RED='\033[0;31m'
BRED='\033[1;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
bblue="\033[1;34m"
green='\033[0;32m'
GREEN='\033[0;32m'
grenbo="\e[92;1m"
pr="\033[0;95m"
YELL='\033[0;33m'
orange='\033[33m'
mg='\033[35m'
white='\033[0;37m'
bwhite='\033[1;37m'

# underline
UPU='\033[5;35m'
UCY='\033[5;36m'
UWH='\033[5;37m'
# INTALLER-UDP
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
DATEVPS=$(date +'%d-%m-%Y')
TIMEZONE=$(printf '%(%H-%M-%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
echo ""
izinsc="https://izin.nixystore.my.id/ip"
# USERNAME
rm -f /usr/bin/user
username=$(curl ${izinsc} | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user
# validity
rm -f /usr/bin/e
valid=$(curl ${izinsc} | grep $MYIP | awk '{print $3}')
echo "$valid" >/usr/bin/e
# DETAIL ORDER
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)
clear
# CERTIFICATE STATUS
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(((d1 - d2) / 86400))
# VPS Information
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

# Status Expired Or Active
Info="(${green}Active${NC})"
Error="(${RED}Expired${NC})"
today=`date -d "0 days" +"%Y-%m-%d"`
Exp1=$(curl ${izinsc} | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear

# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"

# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${coREDiilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)

# IPVPS=$(curl -s ipinfo.io/ip )
IPVPS=$(curl -sS ipv4.icanhazip.com) 
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
clear
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
haproxy_service=$(systemctl status haproxy | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nginx_service=$(systemctl status nginx | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#Status
clear
# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh="${GREEN}ON${NC}"
else
   status_ssh="${RED}OFF${NC}"
fi

# SSH Websocket Proxy
ssh_ws=$( systemctl status ws | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws_epro="${GREEN}ON${NC}"
else
    status_ws_epro="${RED}OFF${NC}"
fi

# STATUS SERVICE HAPROXY
if [[ $haproxy_service == "running" ]]; then 
   status_haproxy="${GREEN}ON${NC}"
else
   status_haproxy="${RED}OFF${NC}"
fi

# STATUS SERVICE XRAY
if [[ $xray_service == "running" ]]; then 
   status_xray="${GREEN}ON${NC}"
else
   status_xray="${RED}OFF${NC}"
fi

# STATUS SERVICE NGINX
if [[ $nginx_service == "running" ]]; then 
   status_nginx="${GREEN}ON${NC}"
else
   status_nginx="${RED}OFF${NC}"
fi

# STATUS SERVICE Dropbear
if [[ $dropbear_service == "running" ]]; then 
   status_dropbear="${GREEN}ON${NC}"
else
   status_dropbear="${RED}OFF${NC}"
fi

# // Log account
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let trb=$trx/2
ssx=$(grep -c -E "^#ss# " "/etc/xray/config.json")
let ssa=$ssx/2

a="ACCOUNT PREMIUM" 
KANAN="\033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m${NC}"
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m${NC}"

clear
echo -e " "                                                           
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} - $BRED » ${bblue}DATE ${YELL}               : ${NC}$DATEVPS${NC}"
echo -e " ${NC} - $BRED » ${bblue}TIME ${YELL}               : ${NC}$TIMEZONE${NC}"
echo -e " ${NC} - $BRED » ${bblue}UPTIME ${YELL}             : ${NC}$SERONLINE${NC}"
echo -e " ${NC} - $BRED » ${bblue}IP VPS ${YELL}             : ${NC}$IPVPS${NC}"
echo -e " ${NC} - $BRED » ${bblue}DOMAIN ${YELL}             : ${NC}$domain${NC}"
echo -e " ${NC} - $BRED » ${bblue}SYSTEM VPS ${YELL}         : ${NC}$MODEL${NC}"
echo -e " ${NC} - $BRED » ${bblue}RAM SERVER ${YELL}         : ${NC}$uram / $tram MB ${NC}"
echo -e " ${NC} ~ ====================================================~$NC"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} - $BRED » ${bblue}VLESS/WS/GRPC ${YELL}      : $NC $vla  ${YELL}$a"
echo -e " ${NC} - $BRED » ${bblue}VMESS/WS/GRPC ${YELL}      : $NC $vma  ${YELL}$a"
echo -e " ${NC} - $BRED » ${bblue}TROJAN/WS/GRPC ${YELL}     : $NC $trb  ${YELL}$a"
echo -e " ${NC} - $BRED » ${bblue}SHADOW/WS/GRPC ${YELL}     : $NC $ssa  ${YELL}$a"
echo -e " ${NC} - $BRED » ${bblue}SSH/OPENVPN/UDP ${YELL}    : $NC $ssh1  ${YELL}$a"
echo -e " ${NC} ~ ====================================================~$NC"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - SSH ${YELL}       : ${NC}$status_ssh${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - XRAY ${YELL}      : ${BRED}$status_xray${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - NGINX ${YELL}     : ${NC}$status_nginx${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - HAPROXY ${YELL}   : ${green}$status_haproxy${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - WS-EPRO ${YELL}   : ${NC}$status_ws_epro${NC}"
echo -e " ${NC} - $BRED » ${bblue}STATUS - DROPBEAR ${YELL}  : ${NC}$status_dropbear${NC}"
echo -e " ${NC} ~ ====================================================~$NC"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} - $NC [${BRED}01$NC]${YELL} MENU SSH      $NC   - [${BRED}16$NC]${YELL} REBOOT VPS              ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}02$NC]${YELL} MENU VMESS    $NC   - [${BRED}17$NC]${YELL} RESTART VPS             ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}03$NC]${YELL} MENU VLESS    $NC   - [${BRED}18$NC]${YELL} SET DOMAIN              ${NC}$NC" 
echo -e " ${NC} - $NC [${BRED}04$NC]${YELL} MENU TROJAN   $NC   - [${BRED}19$NC]${YELL} CERT SSL                ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}05$NC]${YELL} MENU SHADOW   $NC   - [${BRED}20$NC]${YELL} INSTALL UDP             ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}06$NC]${YELL} MENU TRIAL    $NC   - [${BRED}21$NC]${YELL} CLEAR CACHE             ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}07$NC]${YELL} CEK RAM/CPU   $NC   - [${BRED}22$NC]${YELL} CEK BANDWITH            ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}08$NC]${YELL} DELL ALL EXP  $NC   - [${BRED}23$NC]${YELL} UP SCRIPT               ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}09$NC]${YELL} AUTO REBOOT   $NC   - [${BRED}24$NC]${YELL} MENU BOT VIP            ${NC}$NC" 
echo -e " ${NC} - $NC [${BRED}10$NC]${YELL} MENU PORT     $NC   - [${BRED}25$NC]${YELL} CHANGE BANNER SSH       ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}11$NC]${YELL} SPEEDTEST     $NC   - [${BRED}26$NC]${YELL} LOG CREATE USER ACCOUNT ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}12$NC]${YELL} RUNNING CEK   ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}13$NC]${YELL} CLEAR LOG     ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}14$NC]${YELL} CREATE SLOW   ${NC}$NC"
echo -e " ${NC} - $NC [${BRED}15$NC]${YELL} BCKP/RSTR     ${NC}$NC"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " ${NC} - $bblue Username       $YELL:$green $username "
echo -e " ${NC} - $bblue Script Status  $YELL:$NC $sts"
echo -e " ${NC} - $bblue Script Version $YELL:$NC V2.4 (Last Update)"
echo -e " ${NC} - $bblue Telegram Admin $YELL:$NC @nixy_store"
echo -e " ${NC} - $bblue Expired script $YELL:$NC $exp ${NC}/$green $certifacate ${NC}Days${NC}"
echo -e " ${NC} ~ ====================================================~${NC}"
echo -e " "
read -p "  Select From Options [ 1-26 ] »» " opt

case $opt in
1 | 01)
clear
m-sshws
;;
2 | 02)
clear
m-vmess
;;
3 | 03)
clear
m-vless
;;
4 | 04)
clear
m-trojan
;;
5 | 05)
clear
m-ssws
;;
6 | 06)
clear
m-trial
;;
7 | 07)
clear
gotop
echo ""
echo -e " ${green} Back To Menu In 2 Sec ${NC}"
sleep 2
menu
;;
8 | 08)
clear
xp
echo ""
echo -e " ${green} Back To Menu In 2 Sec ${NC}"
sleep 2
menu
;;
9 | 09)
clear
autoreboot
;;
10)
clear
prot
echo ""
read -n 1 -s -r -p "Press Any Key To Back On Menu"
menu
;;
11)
clear
speedtest
echo ""
read -n 1 -s -r -p "Press Any Key To Back On Menu"
menu
;;
12)
clear
run
;;
13)
clear
clearlog
;;
14)
clear
sd
;;
15)
clear
menu-backup
;;
16)
clear
reboot
;;
17)
clear
restart
;;
18)
clear
addhost
;;
19)
clear
fixcert
;;
20)
clear
echo -e "${green} ANDA YAKIN UNTUK MEMASANG SCRIPT INI ? $NC"
echo -e "${green} MINIMAL RAM 2 GB BIAR DISK TIDAK FULL $NC"
echo -e "${green} OS SUPPORT UBUNTU 20.04 ONLY $NC"
echo -e ""
read -p "SUDAH LAPOR KE ADMIN ? [Y/N]:" arg
if [[ $arg == 'Y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  echo -e "${green}START. . . $NC"
elif [[ $arg == 'y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  clear
  echo -e "${Blue}START . . .$NC"
elif [[ $arg == 'N' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  menu
  exit 0
elif [[ $arg == 'n' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  rm -f /root/nixystore.sh
  exit 0
else
  echo -e "${RED}Argumen Tidak Diketahui! $NC"
  sleep 1
  clear
  rm -f /root/nixystore.sh
  exit 0
fi

##########
clear
wget https://vip.nixystore.my.id/files/udp-custom.sh && chmod +x udp-custom.sh && ./udp-custom.sh && reboot
;;
21)
clear
clearcache
;;
22)
clear
bw
;;
23)
clear
wget -q https://vip.nixystore.my.id/nixystore.sh
chmod +x nixystore.sh
./nixystore.sh
;;
24)
clear
m-bot
;;
25)
clear
echo -e "Edit Banner SSH Message " | lolcat
sleep 2
echo -e "Loading......YELL" | lolcat
sleep 5
nano /etc/kyt.txt
clear
echo -e "${green}ANDA YAKIN UNTUK MEMASANG BANNER INI ? $NC"
echo -e ""
read -p "SILAHKAN PILIH OPSI BERIKUT [Y/N]:" arg
if [[ $arg == 'Y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  echo -e "${green}START. . . $NC"
elif [[ $arg == 'y' ]]; then
  echo -e "${Blue}Tindakan Diteruskan! $NC"
  clear
  echo -e "${Blue}START . . .$NC"
elif [[ $arg == 'N' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  menu
  exit 0
elif [[ $arg == 'n' ]]; then
  echo -e "${RED}Tindakan Dihentikan! $NC"
  sleep 1
  clear
  rm -f /root/nixystore.sh
  exit 0
else
  echo -e "${RED}Argumen Tidak Diketahui! $NC"
  sleep 1
  clear
  rm -f /root/nixystore.sh
  exit 0
fi

clear
reboot
;;
26)
clear
cat /etc/user-create/user.log
echo ""
read -p "Press enter Back To menu"
menu
;;
0 | 00)
exit
;;
x)
menu
;;
*) clear ;
echo -e ""
menu
;;
esac
