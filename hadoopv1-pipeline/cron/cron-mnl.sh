#!/bin/sh
#
# Cron job: load the latest MAAS notifications
#

if test -z "$ADMIN"; then
    ADMIN=/data/acumen-admin
fi
. $ADMIN/cron/config.sh

PREFIX=maas-notifications-load

######################################################################
# Nothing below here should need changing

. $ADMIN/cron/run.sh

lockfile="/tmp/$PREFIX.lock"
if [ -z "$flock_mnl" ] ; then
  lockopts="-n $lockfile"
  exec env flock_mnl=1 flock $lockopts $0 "$@"
fi

$ADMIN/maas-etl/maas-notifications-load.sh >> $LOG 2>&1
status=$?
log-to-flume < $LOG
cat $LOG
if test $status != 0; then
  alert-to-pager-duty -l $LOG -s $PREFIX < $LOG
fi

rm -f $lockfile
