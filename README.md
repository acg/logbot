# logbot #

logbot is a minimalist IRC logging bot written in shell.

## Requirements ##

* daemontools [http://cr.yp.to/daemontools.html](http://cr.yp.to/daemontools.html)
* ucspi-tcp [http://cr.yp.to/ucspi-tcp.html](http://cr.yp.to/ucspi-tcp.html)

## Installation ##

1. Customize the contents of env/HOST and env/PORT for your IRC server.
2. Place a symlink to logbot/ in your daemontools /service dir.
3. Ensure svscan is running on /service.

## Usage ##

In IRC, invite the logbot to any channels you want to log.
Logfiles accumulate under logbot/log/main/.
They contain raw IRC message lines prefixed with tai64 timestamps.

