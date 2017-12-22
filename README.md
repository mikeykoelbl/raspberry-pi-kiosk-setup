# Rasbperry PI Kiosk Setup

This is a collection of scripts to bootstrap a Raspberry PI and turn it
into a viable kiosk. Setting up a Raspberry PI requires two steps:

1. Download a Raspbian Image and unpack onto an SD card
2. Run the setup scripts from the Raspberry PI

## Downloading the Raspbian

Location: https://downloads.raspberrypi.org/raspbian_latest

    curl -L https://downloads.raspberrypi.org/raspbian_latest > raspbian.zip
    unzip raspbian.zip
    dd if= of=/dev/sd....

## Run the scripts

Log onto the Raspberry PI in a command shell and execute the following

    curl -L https://raw.githubusercontent.com/mikeykoelbl/raspberry-pi-kiosk-setup/master/00-setup-all.sh | bash
