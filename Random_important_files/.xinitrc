#! /bin/bash

# Set Desktop value as openbox for terminal, and for
# something that i cant remember right this second
export DE=openbox

# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

/usr/bin/xdg-user-dirs-update

# start openbox
openbox-session > ~/.openbox_startup.log 2>&1

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export LANG=en_US.UTF-8


#Stop Screen From Shutting Off
Section "ServerFlags"
        Option	"BlankTime"	"0"
        Option	"StandbyTime"	"0"
        Option	"SuspendTime"	"0"
        Option	"OffTime"	"0"
EndSection
