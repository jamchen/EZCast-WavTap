#!/usr/bin/env bash

PRODUCT_NAME=EZSound

# if [[ "$(shell kextstat | grep $(IDENTIFIER) | grep -v grep)" ]]; then sudo kextunload -b $(IDENTIFIER); fi
sudo rm -rf /System/Library/Extensions/$PRODUCT_NAME.kext
sudo rm -rf /Library/Receipts/$PRODUCT_NAME*
sudo rm -rf /var/db/receipts/*$PRODUCT_NAME.*
