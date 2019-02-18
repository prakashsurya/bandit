    bandit21@bandit:~$ ls /etc/cron.d
    cronjob_bandit22  cronjob_bandit23  cronjob_bandit24

    bandit21@bandit:~$ ls -l /etc/cron.d
    total 12
    -rw-r--r-- 1 root root 120 Oct 16 14:00 cronjob_bandit22
    -rw-r--r-- 1 root root 122 Oct 16 14:00 cronjob_bandit23
    -rw-r--r-- 1 root root 120 Oct 16 14:00 cronjob_bandit24

    bandit21@bandit:~$ cat /etc/cron.d/*
    @reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
    * * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
    @reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
    * * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
    @reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
    * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null

    bandit21@bandit:~$ ls -l /usr/bin/cronjob_bandit2*
    -rwxr-x--- 1 bandit22 bandit21 130 Oct 16 14:00 /usr/bin/cronjob_bandit22.sh
    -rwxr-x--- 1 bandit23 bandit22 211 Oct 16 14:00 /usr/bin/cronjob_bandit23.sh
    -rwxr-x--- 1 bandit24 bandit23 253 Oct 16 14:00 /usr/bin/cronjob_bandit24.sh

    bandit21@bandit:~$ cat /usr/bin/cronjob_bandit22.sh
    #!/bin/bash
    chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
    cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

    bandit21@bandit:~$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
    Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
