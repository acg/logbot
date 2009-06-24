About
-----
logbot is a minimalist IRC logging bot written in shell.
Alan Grow <agrow+logbot@iobound.net>

Requirements
------------
* daemontools (http://cr.yp.to/daemontools.html)
* ucspi-tcp (http://cr.yp.to/ucspi-tcp.html)

Installation
------------
Customize the contents of env/HOST and env/PORT for your IRC server.
Place a symlink to logbot/ in your daemontools svc/ dir.
Ensure svscan is running on svc/.

Usage
-----
In IRC, invite the logbot to any channels you want to log.
Logfiles accumulate under logbot/log/main/.
They contain raw IRC message lines prefixed with tai64 timestamps.

