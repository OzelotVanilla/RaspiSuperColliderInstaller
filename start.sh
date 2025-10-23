#!/bin/bash

# wait ... if u need X for gui
# sleep 90

# get online data
#/usr/bin/curl -O <https://some.url/data.csv> > /home/pi/curl.log 2>&1 &

# jackd [options] -d backend [backend-parameters]
# jackd -dalsa --help, check backend-parameters
# jackd options: reduce max port num (-p16) realtime (-R), priority (-P95)
# alsa options: output hw:0, num in 0 (noise workaround!), num out 2
export JACK_NO_AUDIO_RESERVATION=1
/usr/bin/jackd -p16 -R -P95 -dalsa -dhw:0 -i0 -o2 > /home/pi/jack.log 2>&1 &

# supercollider
# DISPLAY=:0 # if you need gui
# export DISPLAY # if you need gui
export QT_QPA_PLATFORM=offscreen
# /usr/bin/sclang

# or deploy
/usr/bin/sclang /home/pi/start.scd > /home/pi/sclang.log 2>&1 &