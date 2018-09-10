If we look at this assembly code, we know that the offset of function which option 1 called is 8

<+265>:	mov    rax,QWORD PTR [rbp-0x38]
<+269>:	mov    rax,QWORD PTR [rax]
<+272>:	add    rax,0x8
<+276>:	mov    rdx,QWORD PTR [rax]
<+279>:	mov    rax,QWORD PTR [rbp-0x38]
