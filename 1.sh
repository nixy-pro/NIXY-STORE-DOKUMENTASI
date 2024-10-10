#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Develovers » NIXY Project
# telegram   » https://nixy_store
# whatsapp   » wa.me/+6281324481206
# Email      » info@nixystore.my.id
# System Request : Debian 9+/Ubuntu 18.04+/20+
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# NIXY Project

RRED="\033[31m"
YELLOW="\033[33m"
NC='\e[0m'
YELL='\033[0;33m'
BRED='\033[1;31m'
GREEN='\033[0;32m'
ORANGE='\033[33m'
BGWHITE='\e[0;100;37m'

# Getting
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://izin.nixystore.my.id/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "\033[42m          PERMISSION DENIED - NIXY STORE          \033[0m"
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !!!${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts just 1 usd 2ip ${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/+6281324481206"
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    exit 0
  fi
}
checking_sc
clear

source /var/lib/kyt/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi

#tls="$(cat ~/log-install.txt | grep -w "Vmess TLS" | cut -d: -f2|sed 's/ //g')"
#none="$(cat ~/log-install.txt | grep -w "Vmess None TLS" | cut -d: -f2|sed 's/ //g')"

until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e " ${NC} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e " ${NC} ${BGWHITE}        CREATE VMESS ACCOUNT       ${NC}"
echo -e " ${NC} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

		read -rp "  User : " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

if [[ ${CLIENT_EXISTS} == '1' ]]; then
  clear
  echo -e " ${NC} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e " ${NC} ${BGWHITE}        CREATE VMESS ACCOUNT       ${NC}"
  echo -e " ${NC} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo ""
  echo "  A client with the specified name was already created, please choose another name."
  echo ""
  echo -e " ${NC} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  read -n 1 -s -r -p "  Press Any Key To Back On Menu"
  m-vmess
fi
done

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "  Expired (days)  : " masaaktif
read -p "  Limit User (GB) : " Quota
read -p "  Limit User (IP) : " iplimit
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmess$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json

asu=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
ask=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
grpc=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmess_base643=$( base64 -w 0 <<< $vmess_json3)
vmesslink1="vmess://$(echo $asu | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"
systemctl restart xray > /dev/null 2>&1
service cron restart > /dev/null 2>&1

cat >/var/www/html/vmess-$user.txt <<-END

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Format VMESS For Clash
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Format Vmess WS TLS

- name: Vmess-$user-WS TLS
  type: vmess
  server: ${domain}
  port: 443
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}

# Format Vmess WS Non TLS

- name: Vmess-$user-WS Non TLS
  type: vmess
  server: ${domain}
  port: 80
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}

# Format Vmess gRPC

- name: Vmess-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vmess
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: ${domain}
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: vmess-grpc

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 Link Akun Vmess                   
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Link TLS      : 
${vmesslink1}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Link none TLS : 
${vmesslink2}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Link GRPC     : 
${vmesslink3}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

END
if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/kyt/limit/vmess/ip
echo -e "$iplimit" > /etc/kyt/limit/vmess/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vmess/${user}
fi
DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi
echo "### ${user} ${exp} ${uuid} ${Quota} ${iplimit}" >>/etc/vmess/.vmess.db
clear
CHATID="$CHATID"
KEY="$KEY"
TIME="$TIME"
URL="$URL"
TEXT="<code>———————————————————————————————————————</code>
<code>      XRAY/VMESS</code>
<code>———————————————————————————————————————</code>
<code>Remarks   : ${user}
Domain    : ${domain}
Limit Quota : ${Quota} GB
Port TLS  : 400-900
Port NTLS : 80, 8080, 8081-9999
id        : ${uuid}
alterId   : 0
Security  : auto
network   : ws or grpc
Path      : /Multi-Path
Dynamic   : https://bugmu.com/path
Name      : vmess-grpc</code>
<code>———————————————————————————————————————</code>
<code> VMESS WS TLS</code>
<code>———————————————————————————————————————</code>
<code>${vmesslink1}</code>
<code>———————————————————————————————————————</code>
<code>VMESS WS NO TLS</code>
<code>———————————————————————————————————————</code>
<code>${vmesslink2}</code>
<code>———————————————————————————————————————</code>
<code> VMESS gRPC</code>
<code>———————————————————————————————————————</code>
<code>${vmesslink3}</code>
<code>———————————————————————————————————————</code>
Format OpenClash : https://${domain}:81/vmess-$user.txt
<code>———————————————————————————————————————</code>
Aktif Selama   : $masaaktif Hari
Dibuat Pada    : $tnggl
Berakhir Pada  : $expe
<code>———————————————————————————————————————</code>
"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
clear
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "CREATE VMESS ACCOUNT SUCCESS" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "CITY             : $CITY" | tee -a /etc/user-create/user.log
echo -e "ISP              : $ISP" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Remarks          : ${user}" | tee -a /etc/user-create/user.log
echo -e "Domain           : ${domain}" | tee -a /etc/user-create/user.log
# echo -e "User Quota       : ${Quota} GB"  | tee -a /etc/user-create/user.log
# echo -e "User Ip          : ${iplimit} IP" | tee -a /etc/user-create/user.log
echo -e "Port TLS         : 400-900" | tee -a /etc/user-create/user.log
echo -e "Port none TLS    : 80, 8080, 8880, 2082" | tee -a /etc/user-create/user.log
echo -e "id               : ${uuid}" | tee -a /etc/user-create/user.log
# echo -e "Xray Dns      : ${NS}"
# echo -e "Pubkey        : ${PUB}"
echo -e "alterId          : 0" | tee -a /etc/user-create/user.log
echo -e "Security         : auto" | tee -a /etc/user-create/user.log
echo -e "Network          : ws" | tee -a /etc/user-create/user.log
echo -e "Path             : /vmess/multi-path" | tee -a /etc/user-create/user.log
echo -e "Dynamic          : https://bugmu.com/path" | tee -a /etc/user-create/user.log
echo -e "ServiceName      : vmess-grpc" | tee -a /etc/user-create/user.log
# echo -e "Host XrayDNS : ${NS}" | tee -a /etc/user-create/user.log
# echo -e "Location         : $CITY" | tee -a /etc/user-create/user.log
# echo -e "Pub Key          : ${PUB}" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Link TLS         : ${vmesslink1}" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Link none TLS    : ${vmesslink2}" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Link GRPC        : ${vmesslink3}" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Format OpenClash : https://${domain}:81/vmess-$user.txt" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "Aktif Selama     : $masaaktif Hari" | tee -a /etc/user-create/user.log
echo -e "Dibuat Pada      : $tnggl" | tee -a /etc/user-create/user.log
echo -e "Berakhir Pada    : $expe" | tee -a /etc/user-create/user.log
echo -e "${NC}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}" | tee -a /etc/user-create/user.log
echo -e "" | tee -a /etc/user-create/user.log
read -n 1 -s -r -p "Press Any Key To Back On Menu"
m-vmess
