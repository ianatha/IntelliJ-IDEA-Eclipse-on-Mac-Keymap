#!/bin/bash
# find path for IntelliJ preferences directory (can be multiple)
I=$(find ~/Library/Preferences -type d -name IntelliJIdea* -o -type d -name IdeaIC*)

# execute `curl` to save keymap
for temp in $I; do
	X="$I/keymaps/Eclipse on Mac.xml"
	echo Installing as $X
	curl "https://raw.github.com/thatha/IntelliJ-IDEA-Eclipse-on-Mac-Keymap/master/Eclipse%20on%20Mac.xml" > "$X"
done
