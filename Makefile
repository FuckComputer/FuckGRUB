fuckGRUB:
	nim compile -d:release src/main.nim
install:
	cp src/main /usr/bin/fuckGRUB
uninstall:
	rm /usr/bin/fuckGRUB
reMakeGrubConfig:
	grub-mkconfig -o /boot/grub/grub.cfg
