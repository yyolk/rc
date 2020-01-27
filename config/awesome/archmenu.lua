 local menu98edb85b00d9527ad5acebe451b3fae6 = {
     {"Archive Manager", "file-roller "},
     {"Vim", "xterm -e vim ", "/usr/share/icons/hicolor/48x48/apps/gvim.png" },
 }

 local menud334dfcea59127bedfcdbe0a3ee7f494 = {
     {"MeshLab", "meshlab"},
 }

 local menuc8205c7636e728d448c2774e6a4a944b = {
     {"Avahi SSH Server Browser", "/usr/bin/bssh"},
     {"Avahi VNC Server Browser", "/usr/bin/bvnc"},
     {"Firefox", "/usr/lib/firefox/firefox ", "/usr/share/icons/hicolor/16x16/apps/firefox.png" },
     {"Keybase", "run_keybase ", "/usr/share/icons/hicolor/16x16/apps/keybase.png" },
     {"Slack", "env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/slack_slack.desktop /var/lib/snapd/snap/bin/slack ", "///var/lib/snapd/snap/slack/20/usr/share/pixmaps/slack.png" },
 }

 local menue6f43c40ab1c07cd29e4e83e4ef6bf85 = {
     {"Meld", "meld ", "/usr/share/icons/hicolor/16x16/apps/org.gnome.meld.png" },
 }

 local menu52dd1c847264a75f400961bfb4d1c849 = {
     {"Qt V4L2 test Utility", "qv4l2", "/usr/share/icons/hicolor/16x16/apps/qv4l2.png" },
     {"Qt V4L2 video capture utility", "qvidcap", "/usr/share/icons/hicolor/16x16/apps/qvidcap.png" },
     {"VLC media player", "/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC --started-from-file @@u  @@", "/var/lib/flatpak/exports/share/icons/hicolor/16x16/apps/org.videolan.VLC.png" },
     {"VLC media player", "/usr/bin/vlc --started-from-file ", "/usr/share/icons/hicolor/16x16/apps/vlc.png" },
 }

 local menuee69799670a33f75d45c57d1d1cd0ab3 = {
     {"Avahi Zeroconf Browser", "/usr/bin/avahi-discover"},
     {"Manage Printing", "/usr/bin/xdg-open http://localhost:631/", "/usr/share/icons/hicolor/16x16/apps/cups.png" },
     {"UXTerm", "uxterm", "/usr/share/pixmaps/xterm-color_48x48.xpm" },
     {"XTerm", "xterm", "/usr/share/pixmaps/xterm-color_48x48.xpm" },
     {"kitty", "kitty", "/usr/share/icons/hicolor/256x256/apps/kitty.png" },
     {"urxvt", "urxvt"},
     {"urxvt (client)", "urxvtc"},
     {"urxvt (tabbed)", "urxvt-tabbed"},
 }

xdgmenu = {
    {"Accessories", menu98edb85b00d9527ad5acebe451b3fae6},
    {"Graphics", menud334dfcea59127bedfcdbe0a3ee7f494},
    {"Internet", menuc8205c7636e728d448c2774e6a4a944b},
    {"Programming", menue6f43c40ab1c07cd29e4e83e4ef6bf85},
    {"Sound & Video", menu52dd1c847264a75f400961bfb4d1c849},
    {"System Tools", menuee69799670a33f75d45c57d1d1cd0ab3},
}

