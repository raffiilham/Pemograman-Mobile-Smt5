# **Pemrograman Mobile - Pertemuan 5**
### NO : 20
### NIM : 2241720226
### NAMA : Raffi Ilham Maulana

<br>

## **3. Praktikum 1: Membangun Layout di Flutter**

### **Langkah 1: Buat Project Baru**
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

### **Langkah 2: Buka file lib/main.dart**
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

<img src ='assets/img1.png'>

### **Langkah 3: Identifikasi layout diagram**

### **Langkah 4: Implementasi title row**
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

<img src ='assets/img2.png'>

## **4. Praktikum 2: Implementasi button row**

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1: Buat method Column _buildButtonColumn**
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

<img src='assets/img3.png' >

**lib/main.dart (_buildButtonColumn)**

### **Langkah 2: Buat widget buttonSection**
Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

**lib/main.dart (buttonSection)**

<img src='assets/img4.png' >

### **Langkah 3: Tambah button section ke body**
Tambahkan variabel buttonSection ke dalam body seperti berikut:

<img src='assets/img5.png' >

## **5. Praktikum 3: Implementasi text section**
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1: Buat widget textSection**
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

<img src='assets/img6.png'>

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

### **Langkah 2: Tambahkan variabel text section ke body**
Tambahkan widget variabel textSection ke dalam body seperti berikut:

<img src='assets/img7.png'>

## **6. Praktikum 4: Implementasi image section**
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1: Siapkan aset gambar**
Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

<img src='assets/img8.png'>

Contoh nama file gambar di atas adalah lake.jpg


### **Langkah 2: Tambahkan gambar ke body**
Tambahkan aset gambar ke dalam body seperti berikut:

<img src='assets/img9.png'>

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

### **Langkah 3: Terakhir, ubah menjadi ListView**
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

<img src='assets/img10.png'>