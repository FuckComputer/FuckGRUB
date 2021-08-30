fuckGRUB:
	nim compile -d:release src/main.nim
install:
	cp src/main /usr/bin/fuckgrub
uninstall:
	rm /usr/bin/fuckgrub
reMakeGrubConfig:
	grub-mkconfig -o /boot/grub/grub.cfg
