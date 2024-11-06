# 5. Tugas Praktikum
### 1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!

### 2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!

### 3. Jelaskan maksud void async pada praktikum 1?

<br> Jawab </br> 

**void:** Menunjukkan bahwa metode tidak mengembalikan nilai.
**async:** Menandakan metode berjalan asinkron (tidak harus menunggu selesai).
Penggunaan async void biasanya hanya dilakukan untuk event handler karena metode ini tidak mengembalikan nilai dan tidak bisa ditunggu (await). Contoh:

```
private async void OnButtonClick(object sender, EventArgs e)
{
    await Task.Delay(1000);
    Console.WriteLine("Button clicked!");
}
```

### 4. Jelaskan fungsi dari anotasi @immutable dan @override ?

<br>Jawab:</br>

**@immutable:** Digunakan untuk membuat kelas yang tidak bisa diubah setelah objek dibuat (semua property harus final). Sering dipakai di Flutter/Dart.

**@override:** Menandakan bahwa suatu metode atau property menimpa versi di parent class, memastikan metode itu sesuai dengan definisi di kelas induk.

### 5. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!


# laporan praktikum 1&2 dalam folder **kamera_flutter** dan **photo_filter_carousel**

