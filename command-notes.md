# Command Notes

## Problem → Tool
(when I have THIS problem, reach for THIS)
- find a file by its properties (size/owner/type) → find
- search a file for lines containing a word → **grep** and **strings FILE | grep**
- resolve a name to an IP → dig
- see what's listening on a machine → ss
- copy a file between machines → scp
- read/decode base64 → base64 -d
- hide a command's error output → 2>/dev/null

- schedule a script to run automatically: systemd .service + .timer
- see a unit's run history and errors: journalctl --user -u NAME.service
- reload unit files after editing: systemctl --user daemon-reload
- start + enable a timer: systemctl --user enable --now NAME.timer
- check a systemd unit's state: systemctl --user status NAME
- count how often each value appears: bash: sort | uniq -c | sort -rn. Python: a dictionary, then sorted() with key= and reverse=True
- check whether a command worked: echo $? straight after it (0 = success, anything else = failure)
- make a script fail so a pipeline or systemd notices. Exit with a non-zero number (sys.exit(1) in Python)
- read a script’s command-line arguments $1 in bash, sys.argv[1] in Python (sys.argv[0] is the script name)

## Bash
- compare two commands' output ``diff <(cmd1) <(cmd2)`` (no output means identical)
- take one column out of a log line: bash: awk '{print $1}'. Python: line.split()[0]

## VIM(X)
- run a script from vim without switching terminals → :w | !python3 %
- ``ggVG`` to select everything. ``ggVGy`` to copy(yank) text to vim internal memory, ``ggVG"+y`` to copy(yank) to system clipboard (must be in normal mode, and so far only works with vimx (vim-X11)).

## Docker Commands
- docker run [container]
- docker pull [container]
- docker ps
- docker ps -a (to view stopped containers as well)
- docker rmi [image]
- docker rm [container]
- docker system prune (prunes all stopped containers)
- docker pause [container]
- docker unpause [container]
    # Flags
     -i 'interactive' (Tells docker to open the container in interactive mode, which means the container can receive standard input (STDIN) and output(STDOUT) results from the user and be processed in the container.)
    --name 
    -t 'tty' (Basically opens up the console to input commands into the container)

- eg: ``docker run -d -it --name looper ubuntu sh -c 'while true; do date; sleep 1; done'``


## Syntax Reminders

(The parts that can be forgotten)
- $? = exit status of the last command, and every command overwrites it
- f-string width: {value:6} is a 6-wide column, and numbers right-align by default
- bare except: hides real bugs, so catch the specific error
- find: find . TESTS   (c = bytes, ! negates)
- 2>/dev/null = discard errors (2 = stderr, > = send to, /dev/null = discards)
- chmod 600 = owner read+write only (for private keys)
- scp = cp but one side is user@host:path

awk '{print $1}' plus uniq -c counted the blank lines in sample.log as one entry, and the Python version skips blank lines purposefully with ``if not parts`` statement.
awk ‘NF {print $1}’ skips blank lines. Without it, the blank lines become one counted entry.


