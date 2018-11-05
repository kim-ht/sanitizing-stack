.intel_syntax noprefix
.data

shadow_base:
	.byte 0
	.byte 0
	.byte 0
	.byte 0

string1: .ascii "hello world \n"
.global set_shadow
.text
set_shadow:
	push ebp
	push edx
	mov eax, shadow_base
	mov edx, [esp+16]
	shr edx,3
	add edx, eax
	mov eax, [esp+20]
	mov [edx], eax
	pop edx
	pop ebp
	ret
.global get_shadow
get_shadow:
	push ebp
	push edx
	mov eax, shadow_base
	mov edx, [esp+16]
	shr edx,3
	add edx, eax
	mov eax, [edx]
	pop es
	pop edx
	pop ebp
	ret

.global set_shadow2
.text
set_shadow2:
	push ebp
	push edx
	push fs
	mov eax,7
	mov fs, eax
	mov edx, [esp+16]
	shr edx,3		#address >> 3
	mov eax, [esp+20]
	mov fs:[edx],eax	#shadow = FS + (address >> 3)
	pop fs
	pop edx
	pop ebp
	ret
.global get_shadow2
get_shadow2:
	push ebp
	push edx
	push fs
	mov eax, 7
	mov fs, eax
	mov edx, [esp+16]	
	shr edx,3		#address >> 3
	mov eax, fs:[edx]	#shadow = FS + (address >> 3)
	pop fs
	pop edx
	pop ebp
	ret

.global create_shadow
create_shadow:
	push ebp
	push 0
	push 0xffffffff
	push 0x22
	push 3
	push 0x20000000
	push 0
	call mmap
	add esp, DWORD PTR 0x18
	mov shadow_base, eax
	pop ebp
	ret

.global setup_shadow
setup_shadow:
	push ebp
	sub esp, DWORD PTR 0x10

	mov [esp], DWORD PTR 0
	mov eax, shadow_base
	mov [esp+4], eax
	mov [esp+8], DWORD PTR 0xffffffff
	mov [esp+0xc], DWORD PTR 0x51
	mov eax, esp

	mov edx,  DWORD PTR 0x10
	mov ecx,  eax
	mov ebx, DWORD PTR 0x1
	mov eax, DWORD PTR 0x7b
	int 0x80

	add esp, DWORD PTR 0x10

	pop ebp
	ret
