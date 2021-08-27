#!/bin/sh
pactl load-module module-null-sink sink_name=Virtual1
pactl load-module module-loopback source=alsa_input.usb-Google_Inc_Headphone_adapter_98RG019BLXTK06CL-00.mono-fallback sink=Virtual1
pactl load-module module-loopback source=Virtual1.monitor sink=alsa_output.usb-Google_Inc_Headphone_adapter_98RG019BLXTK06CL-00.analog-stereo
