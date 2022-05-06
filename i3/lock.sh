lock() {
  i3lock-fancy -p
}

case "S1" in
  lock) lock;;
  logout) i3-msg exit;;
  suspend) lock && systemctl suspend;;
  hibernate) lock && systemctl hibernate;;
  rebbot) systemctl reboot;;
  shutdown) systemctl poweroff;;
  *)
    echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
    exit 2
esac

exit 0

