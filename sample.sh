#!/bin/bash

echo "Hello from Script"

df -h >> ./sam-out

mkdir /opt/timetracker
cp  -r /var/lib/jenkins/workspace/timet_pipeline /opt/timetracker/