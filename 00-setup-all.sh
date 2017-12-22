#!/bin/bash

REPOSITORY_PATH=https://raw.githubusercontent.com/mikeykoelbl/raspberry-pi-kiosk-setup/master

echo "==============================="
echo "Rasbperry PI Kiosk Setup script"
echo "==============================="
echo ""

echo "Welcome to the Raspberry PI Kiosk Setup"
echo "First of all we will setup the video mode:"

curl ${REPOSITORY_PATH}/scripts/01-setup-video.mode.pl | sudo perl -i.bak

