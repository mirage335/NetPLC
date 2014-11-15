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
#$2 = basicName
genSingleBOM() {
	basicName=$(basename "$1" .sch)

	echo '<table border=1>' > "$OLDPWD"/"$2"/"$2".html
	
	gnetlist -g bom2 "$1" -o - | sed 's/^/<tr><td>/g' | sed 's/:/<\/td><td>/g' | sed 's/$/<\/tr>/g' | sed 's/unknown/<font color=red>unknown<\/font>/g' | sed 's/\?/<font color=red>?<\/font>/g' | sed 's/\$/<font color=green>\$<\/font>/g' | sed 's/>X\ /><font color=red>X\ <\/font>/g'>> "$OLDPWD"/"$2"/"$2".html
	
	echo '</table>' >> "$OLDPWD"/"$2"/"$2".html
}

# Generate HTML BOM files for each sch file in the parent directory
count=0
for schname in `ls ../.. |sed -n -e '/\.sch/s/\.sch$//p'`; do
    if [[ ! -e $schname ]]; then
	mkdir $schname
    fi
    
    cd ../..
    genSingleBOM $schname.sch $schname
    cd $OLDPWD
	
done

echo -e '\E[1;32;46m Finished. \E[0m'