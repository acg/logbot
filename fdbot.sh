#!/bin/sh

botname="fdbot"

say() {
  echo "$1"
  echo 1>&2 "$1"
}

nextword() {
  echo "${line%% *}"
}

rest() {
  echo "${line#* }"
}

say "NICK $botname"
say "USER $botname $botname * :IRC logbot"

while read line; do
  echo 1>&2 "$line"

  case "$line" in
    :*)
      prefix=`nextword`
      line=`rest`
      ;;
  esac

  command=`nextword`
  line=`rest`

  case "$command" in
    PING)
      say "PONG $line"
      ;;
    INVITE)
      who=`nextword`
      line=`rest`
      channel=`nextword`
      line=`rest`
      if [ "$who" = "$botname" ]; then
        say "JOIN $channel"
      fi
      ;;
  esac

done

