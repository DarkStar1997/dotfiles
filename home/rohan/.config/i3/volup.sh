pactl set-sink-volume `cat ~/.config/i3/index.txt` +5%;
x=$(pamixer --sink `cat ~/.config/i3/index.txt` --get-volume);
echo $x;
if [ $x -gt 100 ]
then
    volnoti-show 100;
else
    volnoti-show $x;
fi
