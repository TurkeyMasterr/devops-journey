find . TESTS
c = bytes
! negates

2 is the error stream (stderr)
> means "send it to"
/dev/null is the file that discards whatever it receives
find /", "hide errors → 2>/dev/null".

grep WORD FILE

scp works like cp, except one side can be on another machine:

cp   FROM        TO
scp  FROM        TO

private keys → 600, owner read+write only

31790/tcp open ssl/unknown


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
