"export DISPLAY=:99.0"
"sh -e /etc/init.d/xvfb start"
dbus-launch pulseaudio --start
"recordmydesktop --no-cursor  --output=session.ogv &"
paplay <(espeak -vmb-us2  "Ok, let's get rickrolled" --stdout)
"firefox www.youtube.com/watch?v=oHg5SJYRHA0 &"
sleep 10
paplay <(espeak -vmb-us2  "That bored me" --stdout)
killall firefox
sleep 2
paplay <(espeak -vmb-us2  "Much better now" --stdout)
sleep 2
paplay <(espeak -vmb-us2  "I have to go. See you next build!" --stdout)
killall recordmydesktop
while pgrep -x recordmydesktop > /dev/null ; do sleep 1; done # wait for transcoding
tar cf artifacts.tar session.ogv
ls -l session.ogv
mv session.ogv /tmp
