#!/bin/bash

# Converts gEDA projects to files to suitable for CAD modeling.

# The MIT License (MIT)
# Copyright (c) 2013 Shawn Nock

# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#Derived from generate-gerbers.sh by Shawn Nock. Modified by mirage335, under same copyright as above.


#$1 = sourceFile
genCompleteBom() {
	gnetlist -g bom2 "$1" -o "$OLDPWD"/"$schname"/machineBOM-complete.txt
	tail -n +2 "$OLDPWD"/"$schname"/machineBOM-complete.txt > "$OLDPWD"/"$schname"/machineBOM-complete-pure.txt
}

#"$1" = bomLine
extract_refdes() {
	#refdes=$(echo "$1"| cut -f1 -d\:)
	refdes=$(echo -n "$1"| cut -f1 -d\: | sed 's/,/|/g')
	echo -n '('
	echo -n "$refdes"
	echo -n ')'
}

#"$1" = bomLine
extract_device() {
	device=$(echo -n "$1"| cut -f2 -d\:)
	echo -n "$device"
}

#"$1" = bomLine
extract_value() {
	value=$(echo -n "$1"| cut -f3 -d\:)
	echo -n "$value"
}

#"$1" = bomLine
extract_footprint() {
	footprint=$(echo -n "$1"| cut -f4 -d\:)
	echo -n "$footprint"
}

#"$1" = bomLine
extract_description() {
	description=$(echo -n "$1"| cut -f5 -d\:)
	echo -n "$description"
}

#"$1" = bomLine
extract_cost() {
	cost=$(echo -n "$1"| cut -f5 -d\: | sed 's/\ [^0-9].*//g')
	echo -n "$cost"
}

#"$1" = bomLine
extract_mouserPart() {
	if extract_description "$1" | grep MOUSER > /dev/null
	then
		mouserPart=$(echo -n "$1"| cut -f5 -d\: | sed 's/.*["MOUSER","DigiKey"]\ //g')
	else
		mouserPart=""
	fi
	echo -n "$mouserPart"
}

#"$1" = bomLine
extract_qty() {
	qty=$(echo -n "$1"| cut -f6 -d\:)
	echo -n "$qty"
}

#"$1" = bomline
#"$2" = delim
htmlFormat() {
	html=$(echo "$1" | sed 's/^/<tr><td>/g' | sed 's/'"$2"'/<\/td><td>/g' | sed 's/$/<\/tr>/g' | sed 's/unknown/<font color=red>unknown<\/font>/g' | sed 's/\?/<font color=red>?<\/font>/g' | sed 's/\$/<font color=green>\$<\/font>/g' | sed 's/>X\ /><font color=red>X\ <\/font>/g')
	echo $html
}

#"$1" = bomline
#"$2" = delim
reportAll() {
	extract_refdes "$1" ; echo -n "$2"
	extract_device "$1" ; echo -n "$2"
	extract_value "$1" ; echo -n "$2"
	extract_footprint "$1" ; echo -n "$2"
	extract_description "$1" ; echo -n "$2"
	extract_qty "$1" ; echo -n "$2"
	
	extract_cost "$1" ; echo -n "$2"
	
	extract_mouserPart "$1" ; echo -n "$2"
	extract_qty "$1"
	
	echo ''
}

mouserReport() {
	extract_mouserPart "$1" ; echo -n "$2"
	extract_qty "$1"
	
	echo ''
}

writeMouserReport() {
	echo -n >  "$OLDPWD"/"$schname"/mouser.csv
	while read line
	do
		mouserReport "$line" "," >>  "$OLDPWD"/"$schname"/mouser.csv
	done <  "$OLDPWD"/"$schname"/"machineBOM-complete-pure.txt"
}

writeFullReport() {
	echo -n >  "$OLDPWD"/"$schname"/all.csv
	while read line
	do
		reportAll "$line" "," >>  "$OLDPWD"/"$schname"/all.csv
	done <  "$OLDPWD"/"$schname"/"machineBOM-complete-pure.txt"
}



writeFullHTML() {
	echo '<table border=1>' >  "$OLDPWD"/"$schname"/$schname.html 
	
	echo '<tr><td>refdes</td><td>device</td><td>value</td><td>footprint</td><td>description</td><td>qty</td><td>cost</td><td>Mouser Part</td><td>1</tr>' >> "$OLDPWD"/"$schname"/$schname.html
	
	while read line
	do
		htmlFormat "$line" "," >>  "$OLDPWD"/"$schname"/$schname.html
	done <  "$OLDPWD"/"$schname"/"all.csv"
	
	echo '</table>' >>  "$OLDPWD"/"$schname"/$schname.html
}

createAllBOM() {
	genCompleteBom "$1"

	writeMouserReport
	writeFullReport
	writeFullHTML
}





# Generate HTML BOM files for each sch file in the parent directory
count=0
for schname in `ls ../.. |sed -n -e '/\.sch/s/\.sch$//p'`; do
    if [[ ! -e $schname ]]; then
	mkdir $schname
    fi
    
    cd ../..
    createAllBOM $schname.sch
    cd $OLDPWD
	
done

echo -e '\E[1;32;46m Finished. \E[0m'