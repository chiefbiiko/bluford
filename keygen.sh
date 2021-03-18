#!/bin/bash

source ./.env

echo "generating a fresh key pair..."

KEY_NAME="id_rsa_$STACK_NAME_$(date +%s)"

ssh-keygen -t rsa -m PEM -b 4096 -a 10000 -C zyzx-ssh -f $HOME/.ssh/$KEY_NAME

echo "pushing the public key to ec2..."

aws ec2 import-key-pair --key-name $KEY_NAME.pub --public-key-material "$(<$HOME/.ssh/$KEY_NAME.pub)"

echo "generated public key name: $KEY_NAME.pub"
