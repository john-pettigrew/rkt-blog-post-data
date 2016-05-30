#! /bin/bash
set -e

acbuild begin
acbuild set-name john.pettigrew.rocks/log

# based on alpine
acbuild dep add quay.io/coreos/alpine-sh

# add our script
acbuild run -- mkdir -p /app/log
acbuild copy ./log.sh /app/log.sh

# run our script
acbuild set-exec -- /app/log.sh

# write file
acbuild write --overwrite log-container.aci
acbuild end
