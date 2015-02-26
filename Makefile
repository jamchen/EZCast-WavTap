.PHONY: build-kext clean-kext uninstall-kext install-kext build clean uninstall install

ROOT=$$(pwd)
KEXT_DIR=$(ROOT)/Extension

build: build-kext 

build-kext:
	cd $(KEXT_DIR) && make build

clean: clean-kext

clean-kext:
	cd $(KEXT_DIR) && make clean


install: build uninstall install-kext

install-kext:
	cd $(KEXT_DIR) && make install

uninstall: uninstall-kext

uninstall-kext:
	cd $(KEXT_DIR) && make uninstall
