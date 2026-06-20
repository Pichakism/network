#!/bin/bash

REPORT="port_report.txt"

{
echo "HTTP TEST"
if timeout 5 telnet google.com 80
then
    echo "OPEN" >> $REPORT
else
    echo "CLOSED OR FILTERED" >> $REPORT
fi

echo ""
echo "SSH TEST"
if timeout 5 telnet github.com 22
then
    echo "OPEN" >> $REPORT
else
    echo "CLOSED OR FILTERED" >> $REPORT
fi

echo ""
echo "MYSQL TEST"
if timeout 5 telnet 127.0.0.1 3306
then
    echo "OPEN" >> $REPORT
else
    echo "CLOSED OR FILTERED" >> $REPORT
fi

} &> $REPORT