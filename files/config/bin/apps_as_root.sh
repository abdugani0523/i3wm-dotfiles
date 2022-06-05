#!/usr/bin/env bash

## rofi sudo askpass helper
export SUDO_ASKPASS=~/.config/bin/askpass.sh

## execute the application
sudo -A $1
