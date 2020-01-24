 local menu98edb85b00d9527ad5acebe451b3fae6 = {
     {"Vim", "xterm -e vim ", "/usr/share/icons/hicolor/48x48/apps/gvim.png" },
 }

 local menuc8205c7636e728d448c2774e6a4a944b = {
     {"Avahi SSH Server Browser", "/usr/bin/bssh"},
     {"Avahi VNC Server Browser", "/usr/bin/bvnc"},
     {"Firefox", "/usr/lib/firefox/firefox ", "/usr/share/icons/hicolor/16x16/apps/firefox.png" },
     {"Keybase", "run_keybase ", "/usr/share/icons/hicolor/16x16/apps/keybase.png" },
 }

 local menu52dd1c847264a75f400961bfb4d1c849 = {
     {"Qt V4L2 test Utility", "qv4l2", "/usr/share/icons/hicolor/16x16/apps/qv4l2.png" },
     {"Qt V4L2 video capture utility", "qvidcap", "/usr/share/icons/hicolor/16x16/apps/qvidcap.png" },
     {"VLC media player", "/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC --started-from-file @@u  @@", "/var/lib/flatpak/exports/share/icons/hicolor/16x16/apps/org.videolan.VLC.png" },
     {"VLC media player", "/usr/bin/vlc --started-from-file ", "/usr/share/icons/hicolor/16x16/apps/vlc.png" },
 }

 local menuee69799670a33f75d45c57d1d1cd0ab3 = {
     {"Avahi Zeroconf Browser", "/usr/bin/avahi-discover"},
     {"UXTerm", "uxterm", "/usr/share/pixmaps/xterm-color_48x48.xpm" },
     {"XTerm", "xterm", "/usr/share/pixmaps/xterm-color_48x48.xpm" },
     {"kitty", "kitty", "/usr/share/icons/hicolor/256x256/apps/kitty.png" },
     {"urxvt", "urxvt"},
     {"urxvt (client)", "urxvtc"},
     {"urxvt (tabbed)", "urxvt-tabbed"},
 }

xdgmenu = {
    {"Accessories", menu98edb85b00d9527ad5acebe451b3fae6},
    {"Internet", menuc8205c7636e728d448c2774e6a4a944b},
    {"Sound & Video", menu52dd1c847264a75f400961bfb4d1c849},
    {"System Tools", menuee69799670a33f75d45c57d1d1cd0ab3},
}

