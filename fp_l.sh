#!/bin/bash

regex_no_ext=".*/accounts\|.*/psw\|.*/acc\|.*/account\|.*/accs\|.*/passes\|.*/pass\|.*/passw\|.*/passwo\|.*/password\|.*/passwords\|.*/ps\|.*/psw\|.*/pw\|.*/secure"
regex_txt_ext=".*/accounts.txt\|.*/psw.txt\|.*/acc.txt\|.*/account.txt\|.*/accs.txt\|.*/passes.txt\|.*/pass.txt\|.*/passw.txt\|.*/passwo.txt\|.*/password.txt\|.*/passwords.txt\|.*/ps.txt\|.*/psw.txt\|.*/pw.txt\|.*/secure.txt"

regex_exclude=".*/node_modules.*\|.*/sdk/go.*\|.*/\.local"

separator="--------------------------"

echo "[*] regex: ${regex_no_ext}"

find /home -regextype sed -regex $regex_no_ext -not -regex $regex_exclude > temp

echo "${separator}"
echo "[*] regex: ${regex_txt_ext}"

find /home -regextype sed -regex $regex_txt_ext -not -regex $regex_exclude >> temp

echo > out
while IFS= read -r line; do
    echo "File: ${line}" >> out
    echo >> out
    cat $line >> out
    echo >> out
    echo "${separator}" >> out
    echo >> out
done < temp