#!/bin/sh

arm-eabi-objcopy -O binary obj/minisamd51_example.elf obj/minisamd51_example.bin

wget https://raw.githubusercontent.com/microsoft/uf2/master/utils/uf2conv.py

python2 uf2conv.py -b 16384 -c -o minisamd51_example.uf2 obj/minisamd51_example.bin
