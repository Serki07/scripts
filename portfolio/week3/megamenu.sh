#!/bin/bash
#set varibale for colors
Red="\033[31m"
Reset="\033[0m"
Blue="\033[34m"
Purple="\033[35m"
#run password checker script
~/scripts/portfolio/week2/passwordCheck.sh
#if password is correct show menu
if [ $? -eq 0 ]; then
    echo -e "${Blue}Select an option${Reset} " 
    echo -e "${Purple}1. Create a folder"
    echo "2. Copy a folder "
    echo "3. Set a password "  
    echo "4. Calculator  " 
    echo "5. Create week folders"
    echo "6. check file names "
    echo -e "7. download a file${Reset} " 
    echo "8. Exit" 
    correct=true  
#otherwise print error and exit
else   
echo " Goodbye"
correct=false
exit
fi
#if password is correct run the case statment for selected menu
case $correct in

true)


while true 
do 
echo "Please enter the menu option:"
read

    case $REPLY in
    1)
    #if menue 1 is selected run the folder maker script
     ~/scripts/portfolio/week2/foldermaker.sh
     ;;
    2)
    #if menu2 is selected run the folder copier script
    ~/scripts/portfolio/week2/foldercopier.sh
    ;;
    3)
    #if menu3 is selected run the set password script
     ~/scripts/portfolio/week2/setPassword.sh
    ;;
    4)
    #if menu4 is selected run the calculator script
     ~/scripts/portfolio/week3/calculator.sh
     ;;
    5)
    #if menu5 is selected run the mega folder maker script
    read -p "Please provide the two directory numbers:" num
        ~/scripts/portfolio/week3/megafoldermaker.sh $num 
    ;;
    6)
    #if menu6 is selected run the file search script
    read -p "Please enter the file name: " filename
     ~/scripts/portfolio/week3/filenames.sh $filename
    ;;
    7)
    #if menu7 is selected run the fille dlownloader script
     ~/scripts/portfolio/week3/downloader.sh
    ;;
    8)
    #if menu8 is selected exit
    exit 0
    ;;
     *)
     #if invalid input enterd print error
    echo " please enter correct number "
    ;;
    esac
    done
    
    
   
;;

esac
      
    
    
    
   