#!/bin/bash
for I in ~/Library/Preferences/IntelliJIdea*; do
	X="$I/keymaps/Eclipse on Mac.xml"
	echo Installing as $X
	curl "https://raw.github.com/thatha/IntelliJ-IDEA-Eclipse-on-Mac-Keymap/master/Eclipse%20on%20Mac.xml" > "$X"
done