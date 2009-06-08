#!/bin/sh

botname="fdbot"
channel="&fdb"

say() {
  printf "$1\n"
  echo 1>&2 "$1"
}

say "NICK $botname"
say "USER $botname $botname * :IRC logbot for $channel"

while read line; do
  echo 1>&2 "$line"
  case "$line" in
    :*)
      prefix="${line%% *}"
      line="${line#:* }"
      ;;
  esac
  case "$line" in
    PING" "*)
      rest="${line##PING}"
      say "PONG$rest"
      ;;
    254" "*)       # "N channels formed", part of welcome
      say "JOIN $channel"
      ;;
  esac
done

