import strutils

echo "please input your grub.cfg path(default: /boot/grub/grub.cfg):"
let input = readLine(stdin)
var path = "/boot/grub/grub.cfg"
if input != "":
  path = input
let file = open(path, fmReadWriteExisting)
var content = file.readAll()
content = replace(content, "### END /etc/grub.d/00_header ###", """### END /etc/grub.d/00_header ###
menuentry fuckGRUB {
  echo FUCK YOU!
  play 1750 523 1 392 1 523 1 659 1 784 1 1047 1 784 1 415 1 523 1 622 1 831 1 622 1 831 1 1046 1 1244 1 1661 1 1244 1 466 1 587 1 698 1 932 1 1195 1 1397 1 1865 1 1397 1
  sleep 3
}""")
file.write(content)
file.close()
echo "FINISH!"