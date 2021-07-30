#!/usr/bin/env bash
# Переменные
#KEYS_DIR=./$USER"_keys"
KEY_PREFIX=$USER
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
KEY_NAME=${KEY_PREFIX}"_"${TYPE_OF_KEY}
ssh-keygen \
    -q \
    -t $TYPE_OF_KEY \
#    -N $PASSWORD \
    -C $COMMENT \
    -f ~/.ssh/$KEY_NAME
