#!/bin/sh
echo " $(free -h | grep Mem | awk '{print $3}' | sed s/Gi/gb/ | sed s/Mi/mb/)"
