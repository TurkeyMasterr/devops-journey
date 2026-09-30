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

## Syntax Reminders

(The parts that can be forgotten)
- find: find . TESTS   (c = bytes, ! negates)
- 2>/dev/null = discard errors (2 = stderr, > = send to, /dev/null = discards)
- chmod 600 = owner read+write only (for private keys)
- scp = cp but one side is user@host:path
