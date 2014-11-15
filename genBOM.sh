#!/bin/bash
# This file is part of NetPLC.

# NetPLC is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# NetPLC is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with NetPLC.  If not, see <http://www.gnu.org/licenses/>.

#Takes no parameters, only the variables sourceFile and basicName .
genSingleBOM() {
	echo '<table border=1>' > "$basicName".html
	gnetlist -g bom2 "$sourceFile" -o - | sed 's/^/<tr><td>/g' | sed 's/:/<\/td><td>/g' | sed 's/$/<\/tr>/g' | sed 's/unknown/<font color=red>unknown<\/font>/g' | sed 's/\?/<font color=red>?<\/font>/g' | sed 's/\$/<font color=green>\$<\/font>/g' | sed 's/>X\ /><font color=red>X\ <\/font>/g'>> "$basicName".html
	echo '</table>' >> "$basicName".html
}

sourceFile=./NetPLC.sch
basicName=$(basename "$sourceFile" .sch)

genSingleBOM