#!/bin/sh

lock() {
    scrot /tmp/screen_locked.png
    mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
    keyboard=$(xkblayout-state print %s)
    rm -f /tmp/screen_locked_2.png
    convert -font courier -fill white -box black -pointsize 15 \
        -gravity South -annotate +0+0 " -$keyboard- " \
        /tmp/screen_locked.png /tmp/screen_locked_2.png
    i3lock -i /tmp/screen_locked_2.png -u
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
