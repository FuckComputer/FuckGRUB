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
  echo ~R~r~h~a~r~'~i~l/Team Grimoire
  play 350 440 2 532 1 494 1 587 1 532 1 494 1 440 1 532 1 440 1 415 1 440 1 494 1 415 1 370 1 415 1 440 2 532 1 494 1 587 1 532 1 659 1 587 1 587 1 699 1 659 1 587 1 659 1 880 1 831 1
  sleep 3
}""")
file = open(path, fmWrite)
file.write(content)
file.close()
echo "FINISH!"
