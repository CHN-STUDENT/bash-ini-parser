#!/bin/bash

TEST_FILE="${1:-file.ini}"

source ../bash-ini-parser

echo show example file
echo
cat $TEST_FILE

echo parsing $TEST_FILE
cfg_parser "$TEST_FILE"
echo

echo show file parsed
cfg_writer
echo

echo show some results:

echo
echo enable section \'sec2\'
cfg.section.sec2

echo "var2 value is \"$var2\""
echo "var5[1] value is \"${var5[1]}"\"
echo "var5[*] value is \"${var5[*]}"\"
echo "var4 value is \"$var4"\"

echo
echo enable section \'sec1\'
cfg.section.sec1

echo "var2 value is \"$var2\""
