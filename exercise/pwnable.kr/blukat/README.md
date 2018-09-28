This level is about group management.

The user 'blukat' has two groups, 'blukat' and 'blukat_pwn'
Group shares same accessability to all its members. When a file has r-- permission associated with group, it means all member of determined group can read it.

There are these files in home directory and interesting fact of blukat group

blukat@ubuntu:~$ ls -la
total 36
drwxr-x---  4 root blukat     4096 Aug 15 22:55 .
drwxr-xr-x 92 root root       4096 Aug 12 10:28 ..
-r-xr-sr-x  1 root blukat_pwn 9144 Aug  8 06:44 blukat
-rw-r--r--  1 root root        645 Aug  8 06:43 blukat.c
dr-xr-xr-x  2 root root       4096 Aug 15 22:55 .irssi
-rw-r-----  1 root blukat_pwn   33 Jan  6  2017 password
drwxr-xr-x  2 root root       4096 Aug 15 22:55 .pwntools-cache

blukat@ubuntu:~$ groups
blukat blukat_pwn


focus on the password access permission and group name.
blukat is also a member of blukat_pwn. so, blukat can read a password!

Let's use it as an stdinput to ./blukat
















SPOILER!!!!
blukat@ubuntu:~$ ./blukat < ./password 
guess the password!
congrats! here is your flag: Pl3as_DonT_Miss_youR_GrouP_Perm!!

