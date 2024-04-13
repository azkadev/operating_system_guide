# operating system simple

Membuat sistem operasi sederhana dapat dilakukan dengan beberapa langkah sederhana sebagai berikut:

1. Buat sebuah project baru di Integrated Development Environment (IDE) C++ yang Anda gunakan.
2. Buat sebuah file baru dengan nama yang sesuai, misalnya "main.cpp". Ini akan menjadi file utama dari sistem operasi yang Anda buat.
3. Ketikkan kode sistem operasi sederhana seperti yang ditunjukkan di atas, atau gunakan kode Anda sendiri jika Anda sudah memilikinya.
4. Compile dan jalankan program tersebut untuk memastikan bahwa sistem operasi berfungsi sebagaimana mestinya.
5. Jika sistem operasi berjalan dengan baik, Anda dapat mengembangkan lebih lanjut sesuai kebutuhan, misalnya dengan menambahkan fitur-fitur baru atau memperbaiki bug yang mungkin ada.

Sebagai catatan, sistem operasi sederhana yang ditunjukkan di atas hanya merupakan contoh sederhana. Anda dapat memodifikasi dan mengembangkan kode tersebut sesuai kebutuhan untuk membuat sistem operasi yang lebih kompleks. Selamat mencoba


## Bootloader
Bootloader adalah program yang berjalan pada saat komputer pertama kali dinyalakan (biasanya disebut "boot" atau "startup"). Tujuan utama bootloader adalah untuk mempersiapkan sistem operasi untuk dijalankan, dengan cara mengatur alokasi memori, menginisialisasi hardware, dan melakukan tugas lain yang diperlukan untuk mempersiapkan sistem untuk menjalankan sistem operasi.

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
![Screenshot from 2022-12-10 08-14-12](https://user-images.githubusercontent.com/82513502/206821382-e8460bac-e4dc-4960-8b5c-3946ee3b34f7.png)

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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## Cara Beli Jasa / Products 

- **Lewat Telegram Bot**
  Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
  (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
  -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
  -  Isi data pribadi / subscribe channel
  -  Tap Main menu pilih services / products
  -  Pilih Product / Services
  -  Pastikan coin mencukupi
  -  Isi data yang di butuhkan

- **Lewat Telegram USER**
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**
  jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->