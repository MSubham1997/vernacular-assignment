#!/bin/bash
PATH= "/home/ubuntu/audios/"
filename=*.wav
deleted-file= /tmp/$(date +%d-%m-%Y).log
days=+2880

find "$PATH" -type f -name ".wav"  -mmin +2880 "$days" -printf '%f\t%T+\n' -exec date '+%F+%H:%M:%S.%N -delete

