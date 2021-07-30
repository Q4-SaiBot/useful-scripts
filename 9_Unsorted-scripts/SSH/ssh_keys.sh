#!/usr/bin/env bash
# Переменные
#KEYS_DIR=./$USER"_keys"
#KEY_PREFIX=$USER
KEY_PREFIX="saibot"
#PASSWORD="Password1!"
#COMMENT="user@host"
COMMENT="Q4.SaiBot@WorkStation (Linux Mint)"
#COMMENT=$USER"@"$HOSTNAME
#mkdir $KEYS_DIR

# DSA
# RSA
# ECDSA
# Ed25519
TYPE_OF_KEY="ed25519"
NAME_OF_KEY=${KEY_PREFIX}"_"${TYPE_OF_KEY}
echo $TYPE_OF_KEY
echo $NAME_OF_KEY

ssh-keygen \
    -t $TYPE_OF_KEY \
    -C "$COMMENT" \
    -f ~/.ssh/$NAME_OF_KEY
