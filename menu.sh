#! /bin/bash


arr=("show system information" "list user with /bin/bash" "search for a user" "add user" "delete user" "show user details" "change user password" "lock user" "unlock user" "Exit")



while  true;do

for ((i=0; i<${#arr[@]}; i++)); do
  echo "$((i+1)): ${arr[i]}"
done
read -p "Enter your choice " input 
 if [ "$input" == 10 ]; then
    break
    fi

case "$input" in 
1)
./show_system_information.sh
;;
2)
./list_user.sh
;;
3)
read -p "Enter username " user
./search_user.sh "$user"
;;
4)
read -p "Enter username " user
./add_user.sh "$user"
;;
5)
read -p "Enter username " user
./delete_user.sh "$user"
;;
6)
read -p "Enter username " user
./user_details.sh "$user"
;;

10)
break
;;
*)
echo "exit"
;;
esac

done 
