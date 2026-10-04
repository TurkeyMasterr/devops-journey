Learned about: Systemmd + Timers, Users, Groups, Cron

- Systemd timers combine two unit files together, the *.service* and the *.timer* config files.
    The .service file points at the script via ExecStart
    It allows the user to check Journalctl to check if the timer triggered and allows a better level of debugging compared to the simpler and  more straightforward cron jobs.
    Timers are set using the *OnCalendar=* Syntax
    For example: OnCalendar=daily, OnCalendar=*:0/15
    
- Users
    Every file has an owner/user. Permission bits control what the user, the file's group, and others can each do (read/write/execute).
    Permission bits are applied per file, not per user.
    
- Groups
    Groups are a collection of users that makes it faster to assign permissions since you can just change the permissions of the group instead of per user. You add a user to a group with **usermod -aG groupname user**
    
- Cron
    The traditional timer, executes a script. This can be used to run a script on a timer using the * * * * * expression.
    * (Minute): 0 through 59
    * (Hour): 0 through 23
    * (Day of Month): 1 through 31
    * (Month): 1 through 12
    * (Day of Week): 0 through 7 (0 and 7 are Sunday)
    
    
*Technically, both Cron and Systemd timers solve the same problem, systemd is the preference since it offers logging, dependencies, status via systemctl. Cron is simpler and is universal on the other hand.*
