#!/bin/bash

REPORT="connectivity_report"

echo "===================================" > $REPORT
echo "NETWORK CONNECTIVITY REPORT" >> $REPORT
echo "===================================" >> $REPORT
echo "" >> $REPORT

echo "===== Ping 8.8.8.8 =====" >> $REPORT
ping -c 5 8.8.8.8 >> $REPORT

echo "" >> $REPORT

echo "===== Ping google.com =====" >> $REPORT
ping -c 5 google.com >> $REPORT

echo "" >> $REPORT

echo "===== DNS Resolution github.com =====" >> $REPORT
nslookup github.com >> $REPORT

echo "" >> $REPORT
echo "Report Finished Successfully" >> $REPORT