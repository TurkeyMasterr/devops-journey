Developed three scripts: biggest.sh | sitestatuscheck.sh | logcount.sh

Scripts are literally just commands, many learned from bandit that get chained together, some concepts are shared similar to programming languages, like storing values in variables and referencing them later, the syntax can be tricky sometimes but it is slowly becoming second nature the more I practice and type it.

- The biggest.sh script lists the 5 largest files in a supplied directory and sorts them by size. I ran into a bug here where I ordered the command incorrectly. Reading the file top to bottom which is how bash reads the script helped solve that.

- The sitestatuscheck.sh script uses the curl command to return a code of whether a site is up or down. I faced a problem with some sites that dont return a 200 code, but a 301, so I just decided to use the || to handle that as well, however I'm sure there might be a better way to handle this instead of handling all the OK codes individually. But I didn't want to over engineer it.

- On the logcount.sh script, I learned about a new command called **awk** which grabs columns from a file and using the $1 syntax grab the first entry or "whole string of numbers or letters" from each row. This was the base of this tool.
I stored the user-supplied $1 into a variable, bash's $1 is the first argument passed to the script; awk's $1 is the first column of the line awk is reading. Both use $1 for different purposes. This confused me a bit initially and led to bugs.

**I wrote each pipeline incrementally, one command at a time, dealing with problems as they presented themself, checking the output every stage.**

*Installed the shellcheck package as well to catch bugs and bad practices in the scripts.*
