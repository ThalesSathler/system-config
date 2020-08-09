#!/bin/sh
pkill pulseaudio && \
  dbus-launch &
