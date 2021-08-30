import strutils

echo "please input your grub.cfg path(default: /boot/grub/grub.cfg):"
let input = readLine(stdin)
var path = "/boot/grub/grub.cfg"
if input != "":
  path = input
var file = open(path)
var content = file.readAll()
file.close()
content = replace(content, "### END /etc/grub.d/00_header ###", """### END /etc/grub.d/00_header ###
menuentry 'mope mope' {
  echo ~m~o~p~e~m~o~p~e/Leaf
  play 300 784 2 659 2 532 2 784 2 784 1 880 1 784 1 699 1 784 2 784 1 1047 1 932 2 932 1 880 1 784 2 699 2 659 2 699 2 784 4 784 2 659 2 532 2 784 2 784 1 880 1 784 1 699 1 784 2 880 1 932 1 1047 2 699 1 659 1 699 2 1047 2 932 2 880 2 784 2
  sleep 3
}""")
file = open(path, fmWrite)
file.write(content)
file.close()
echo "FINISH!"
