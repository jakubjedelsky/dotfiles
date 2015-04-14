#!/bin/sh

lock() {
    scrot /tmp/screen_locked.png
    mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
    i3lock -i /tmp/screen_locked.png -u
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
