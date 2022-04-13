if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
  # exec sway --debug --verbose 2> ~/sway-$(date +%Y-%m-%d-%H%M%S).log
fi
