# to figure out what settings are being changed via the UI, run the following
# `G_MESSAGES_DEBUG=all gnome-control-center`
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ close-tab disabled
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ close-window disabled
gsettings set org.gnome.desktop.sound event-sounds false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 28
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
