    $ scp -qP 2220 bandit13@bandit.labs.overthewire.org:~/sshkey.private /tmp
    bandit13@bandit.labs.overthewire.org's password:
    $ chmod 600 /tmp/sshkey.private
    $ ssh -qp 2220 -i /tmp/sshkey.private bandit14@bandit.labs.overthewire.org 'cat /etc/bandit_pass/bandit14'
    4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
