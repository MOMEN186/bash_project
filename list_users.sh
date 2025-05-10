#! /bin/bash
echo "--------------users within /bin/bash -------------------------"

grep '/bin/bash' /etc/passwd | cut -d: -f1

echo "---------------------------------------------------------------"