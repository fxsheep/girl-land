#!/bin/bash
aarch64-linux-gnu-as payload.S -o payload.elf
aarch64-linux-gnu-objcopy -O binary payload.elf payload.bin
cat header.bin > boot.bin
cat payload.bin >> boot.bin
gzip -c < boot.bin >girl_image
cat sagit.dtb >>girl_image
