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


### Menambahkan Kode Cpp

Untuk menambahkan kode C++ ke dalam bootloader, Anda dapat mengikuti beberapa langkah sederhana sebagai berikut:

1. Pastikan Anda sudah memiliki kode bootloader yang akan Anda modifikasi. Anda dapat menggunakan kode yang ditunjukkan di atas sebagai contoh.
2. Buat sebuah file baru dengan nama yang sesuai, misalnya "main.cpp". Kemudian ketikkan atau salin kode C++ yang akan Anda tambahkan ke dalam file tersebut.
3. Buka Terminal Linux dan arahkan ke direktori tempat Anda menyimpan file main.cpp tadi.
4. Ketikkan perintah "g++ main.cpp -o main.o" untuk meng-compile kode C++ menjadi file objek yang dapat digunakan oleh bootloader.
5. Kemudian, buka file bootloader.asm yang sudah Anda buat sebelumnya dan tambahkan perintah untuk menginkludekan file objek main.o yang sudah Anda buat. Perintahnya adalah "extern _main", tanpa tanda petik.
6. Selanjutnya, tambahkan perintah untuk memanggil fungsi _main dari file objek main.o. Perintahnya adalah "call _main", juga tanpa tanda petik.
7. Simpan perubahan yang Anda buat di file bootloader.asm dan kembali ke Terminal.
8. Jalankan perintah "nasm -f bin bootloader.asm -o bootloader.bin" untuk meng-compile ulang bootloader menggunakan kode yang sudah Anda modifikasi.
9. Setelah selesai dicompile, jalankan bootloader dengan menggunakan perintah "qemu-system-i386 bootloader.bin" untuk menguji apakah kode C++ yang Anda tambahkan berfungsi dengan baik.
    
Jika semuanya berjalan lancar, bootloader akan dijalankan dan kode C++ yang Anda tambahkan akan dieksekusi sesuai dengan yang diharapkan. Anda dapat memodifikasi kode tersebut sesuai kebutuhan untuk membuat bootloader yang lebih kompleks. Selamat mencoba!