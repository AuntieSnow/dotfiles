#!/bin/bash
sudo pacman -S pyalpm && git clone git://github.com/actionless/pikaur && cd pikaur && ./pikaur.py -S --noconfirm trizen && cd .. && rm -rf pikaur
