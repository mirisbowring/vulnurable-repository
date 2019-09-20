#!/bin/bash

ssh_dsa=("dsa" "1024")
ssh_ecdsa=("ecdsa" "256" "384" "521")
ssh_ed25519=("ed25519" "256")
ssh_rsa=("rsa" "1024" "2048" "4096" "8192")

ssh_cipher_suites=(
    ssh_dsa[@]
    ssh_ecdsa[@]
    ssh_ed25519[@]
    ssh_rsa[@]
)

gen_ssh_key(){
    arr=("$@")
    cipher=${arr[0]}
    for item in ${arr[@]:1}
    do
        echo "Generating $cipher-$item"
        ssh-keygen -t "$cipher" -b "$item" -N "" -f ssh/ssh_"$cipher""$item"
    done
}

gen_ssh_fingerprint(){
    for file in ssh/*.pub
    do
        echo "Generating fingerprint for $(basename "$file" .pub)"
        ssh-keygen -lf "$file" > "ssh/$(basename "$file" .pub).fingerprint"
    done
}

mkdir -p ssh

COUNT=${#ssh_cipher_suites[@]}
for ((i=0; i<$COUNT; i++))
do
    gen_ssh_key "${!ssh_cipher_suites[i]}"
done

gen_ssh_fingerprint
