#!/bin/bash
suffix=".tex"
sheet=$1
qs="qun-sh"$sheet".tex"
ansname="ans"$sheet".tex"
echo -n "" > $ansname
cat $qs | grep -v "\\iffalse" | grep -v "\\fi$" >> $ansname && pdflatex $ansname

