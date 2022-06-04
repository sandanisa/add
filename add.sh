mrh="\033[31m"
ijo="\033[32m"
nat="\033[0m"
logo(){
clear
echo -e ${ijo}"========================================"
echo ''
echo "     RESWARA MASS ADD HTTPS AND HTTP"
echo -e ${mrh}"                BY lkey7"
echo ''
echo -e ${ijo}"========================================"
}
menu(){
echo ''
echo -e ${nat} "1. ADD HTTPS"
echo -e ${nat} "2. ADD HTTP"
echo ''
}
choose(){
read -p "Choose Number: " pilih;
case $pilih in
"1")
https
;;
"2")
http
;;
*)
echo -e ${mrh} "Tidak Tersedia"
sleep 1
clear && main
;;
esac
}
https(){
read -p "input list: " lis;
read -p "save in: " sv;
while read sites; do
c=$(echo "https://$sites/")
echo $c >> $sv
done < $lis
echo -e ${ijo} "DONE"
}
http(){
echo -e ${wet}
read -p "input list: " lis;
read -p "save in: " sv;
while read sites; do
c=$(echo "http://$sites/")
echo $c >> $sv
done < $lis
echo -e ${ijo} "DONE"
echo -e ${nat} ''
}
main(){
logo
menu
choose
}
main
