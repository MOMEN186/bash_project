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
./list_users.sh
;;
*)
echo "exit"
;;
esac

done 
