sudo systemctl start tlp
sudo systemctl start tlp-sleep
sudo systemctl mask systemd-rfkill
sudo systemctl mask systemd-rfkill.socket
sudo tlp start
tlp-rdw
