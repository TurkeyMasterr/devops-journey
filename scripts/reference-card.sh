# every script starts with this line:
#!/usr/bin/env bash

# a variable (no spaces around =):
NAME="value"

# use a variable (the $ means "value of"):
echo "$NAME"

# run a command, capture its output into a variable:
RESULT="$(some-command)"

# take an argument passed to the script ($1 = first argument):
FOLDER="$1"

# a conditional:
if [ some-test ]; then
    echo "true case"
else
    echo "false case"
fi
