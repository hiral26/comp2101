#!/bin/bash
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example
title="Overlord"
user="Hiral"
hostname=$HOSTNAME
time=$(date +'%H:%M')
dayName=`date +%a`
###############
# Main        #
###############
test $dayName = Mon && title="Optimist"
test $dayName = Tue && title="Realist"
test $dayName = Wed && title="Pessimist"
test $dayName = Thu && title="amazing"
test $dayName = Fri && title="clever"
test $dayName = Sat && title="Busy"
test $dayName = Sun && title="my"
export loginmessage="Welcome to planet $hostname, $title $user! ${time?} ${dayName?}"
cowsay $loginmessage
cat <<EOF

EOF
