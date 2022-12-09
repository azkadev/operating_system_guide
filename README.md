# operating system simple

Membuat sistem operasi sederhana dapat dilakukan dengan beberapa langkah sederhana sebagai berikut:

1. Buat sebuah project baru di Integrated Development Environment (IDE) C++ yang Anda gunakan.
2. Buat sebuah file baru dengan nama yang sesuai, misalnya "main.cpp". Ini akan menjadi file utama dari sistem operasi yang Anda buat.
3. Ketikkan kode sistem operasi sederhana seperti yang ditunjukkan di atas, atau gunakan kode Anda sendiri jika Anda sudah memilikinya.
4. Compile dan jalankan program tersebut untuk memastikan bahwa sistem operasi berfungsi sebagaimana mestinya.
5. Jika sistem operasi berjalan dengan baik, Anda dapat mengembangkan lebih lanjut sesuai kebutuhan, misalnya dengan menambahkan fitur-fitur baru atau memperbaiki bug yang mungkin ada.

Sebagai catatan, sistem operasi sederhana yang ditunjukkan di atas hanya merupakan contoh sederhana. Anda dapat memodifikasi dan mengembangkan kode tersebut sesuai kebutuhan untuk membuat sistem operasi yang lebih kompleks. Selamat mencoba


## Bootloader

```asm
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
```

Bootloader ini akan mencetak pesan pengantar ke layar, lalu menjalankan sistem operasi yang berada pada lokasi memori 0x0000:0x7e00.
Anda dapat menggunakan kode ini sebagai dasar untuk membuat bootloader yang lebih kompleks sesuai kebutuhan. Selamat mencoba!


## Run BootLoader

### Linux

Untuk menjalankan kode bootloader di Linux, Anda dapat menggunakan beberapa langkah sederhana sebagai berikut:

1. Pastikan Anda sudah memiliki kode bootloader yang akan Anda jalankan. Anda dapat menggunakan kode yang ditunjukkan di atas sebagai contoh.
Buat sebuah file baru dengan nama yang sesuai, misalnya "bootloader.asm". Kemudian ketikkan atau salin kode bootloader ke dalam file tersebut.
2. Buka Terminal Linux dan arahkan ke direktori tempat Anda menyimpan file bootloader.asm tadi.
3. Ketikkan perintah "nasm -f bin bootloader.asm -o bootloader.bin" untuk meng-compile kode bootloader menjadi file biner yang dapat dieksekusi.
4. Setelah berhasil dicompile, ketikkan perintah "qemu-system-i386 bootloader.bin" untuk menjalankan bootloader di dalam emulator QEMU.

Jika semuanya berjalan lancar, bootloader akan dijalankan di dalam emulator dan Anda akan dapat melihat hasilnya. Anda dapat menggunakan emulator ini untuk menguji bootloader yang Anda buat sebelum mencoba di perangkat nyata. Selamat mencoba!   