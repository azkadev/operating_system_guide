; Bootloader yang sederhana

; Setel segmen kode dan data
org 0x7c00

; Cetak pesan pengantar
mov ah, 0x0e
mov bh, 0x00
mov bl, 0x07
mov al, 'B'
int 0x10
mov al, 'o'
int 0x10
mov al, 'o'
int 0x10
mov al, 't'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, 'a'
int 0x10
mov al, 'd'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, ' '
int 0x10
mov al, 's'
int 0x10
mov al, 'e'
int 0x10
mov al, 'd'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, 'h'
int 0x10
mov al, 'a'
int 0x10
mov al, 'n'
int 0x10
mov al, 'a'
int 0x10

; Cetak baris baru
mov al, 0x0d
int 0x10
mov al, 0x0a
int 0x10

; Jalankan sistem operasi
jmp 0x0000:0x7e00

; Tambahkan padding sampai 512 byte
times 510-($-$$) db 0

; Tambahkan magic number
dw 0xaa55
