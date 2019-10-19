x=$(pamixer --sink `cat ~/.config/i3/index.txt` --get-mute)


if [ "$x" = "false" ]
then
    pamixer --sink `cat ~/.config/i3/index.txt` -m
    volnoti-show -m
else 
    vol=$(pamixer --sink `cat ~/.config/i3/index.txt` --get-volume);
    pamixer --sink `cat ~/.config/i3/index.txt` -u
    volnoti-show $vol  
fi