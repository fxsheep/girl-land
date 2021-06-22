#!/bin/bash
cat header.bin > boot.bin
cat payload.bin >> boot.bin
gzip -c < boot.bin >girl_image
cat land.dtb >>girl_image
abootimg --create boot.img -f bootimg.cfg -k girl_image -r initrd-dummy
