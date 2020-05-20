#/bin/bash
#ask users to enter password
Red="\033[31m"
Reset="\033[0m"
read -sp "$(echo -e $Red"Please enter password: "$Reset)" password
echo
# hash the enterd password and pass it to text file 


echo $password|sha256sum >~/scripts/portfolio/week2/pass.txt

#call stored password
secret="$(<~/scripts/portfolio/week2/secret.txt)"
#call enterd password 
pass="$(<~/scripts/portfolio/week2/pass.txt)"
#check if enterd password is correct 


if [ "$secret" == "$pass" ];then
#grant access 
    echo -e "${Green}Access Granted${Reset}"
    exit 0
else
#otherwise, print error
    echo -e "${Red}Access Denied${Reset}"
    exit 1
fi





