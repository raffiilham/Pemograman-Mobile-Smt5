#### Nama : Raffi Ilham Maulana
#### Kelas: TI-3F / 20
#### NIM  : 2241720226

---

# Laporan Jobsheet 12 Pemrograman Mobile

## Praktikum 1: Dart Streams
### Soal 1
```dart
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Raffi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: StreamHomePage(),
    );
  }
```

## Praktikum 1
### Soal 1
```class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.brown,
    Colors.pink,
    Colors.indigo,
    Colors.lime,
    Colors.black,
  ];
}
```

## Praktikum 1
### Soal 3
```dart	
yield* Stream.periodic(
  const Duration(seconds: 1), (int t) {
    int index = t % colors.length;
    return colors[index];
});
```	
- yield* dalam Dart digunakan untuk menghasilkan nilai dari iterable atau stream lain secara langsung dalam sebuah fungsi generator. Dalam konteks Stream atau fungsi asynchronous, yield* memungkinkan Anda untuk meneruskan semua elemen dari stream atau iterable yang di-referensikan tanpa harus mengiterasinya secara manual menggunakan loop. Pada contoh di atas, yield* digunakan untuk mengalirkan setiap elemen dari Stream.periodic, yang menghasilkan nilai berdasarkan perhitungan dalam fungsi callback (mengembalikan elemen dari daftar colors secara bergantian berdasarkan indeks yang dihitung).

### Soal 4
<img src='assets/img1.gif'>

### Soal 5

```dart	
    colorStream.getColors().listen((eventColor){
      setState(() {
        bgColor = eventColor;
      });
    });
```
- Perbedaan utama antara menggunakan `listen` dan `await for` dalam Dart terletak pada cara mereka menangani aliran data dari sebuah *stream*. Metode `listen` digunakan untuk berlangganan ke *stream* dan memproses setiap *event* secara langsung menggunakan *callback*. Ini ideal untuk situasi yang memerlukan respons cepat tanpa menunggu *stream* selesai. Di sisi lain, `await for` digunakan dalam fungsi asinkron untuk memproses setiap elemen *stream* secara berurutan hingga selesai, memberikan penanganan yang lebih terstruktur. Dengan `listen`, Anda memiliki fleksibilitas untuk mengelola *subscription* secara manual, seperti melakukan *pause* atau *resume*. Sementara itu, `await for` lebih sederhana tetapi hanya dapat digunakan dalam konteks fungsi asinkron.

## 4. Praktikum 2: Stream controllers dan sinks

### Soal 6
<img src='assets/img2.gif'>
1. Langkah 8:
- Menginisialisasi objek NumberStream dan StreamController.
- Membuat objek Stream dari StreamController.
- Menambahkan listener ke stream tersebut. Setiap kali ada data yang masuk ke dalam stream, fungsi yang diberikan kepada listen akan dipanggil. Dalam kasus ini, fungsi tersebut akan memperbarui lastNumber menggunakan setState. Ini umumnya dilakukan untuk memastikan bahwa perubahan nilai di dalam widget diperbarui dan direfleksikan pada antarmuka pengguna (UI).

2. Langkah 10:
- Membuat fungsi addRandomNumber yang bertujuan untuk menambahkan angka acak ke dalam stream menggunakan objek NumberStream.
- Fungsi ini menggunakan objek Random untuk menghasilkan angka acak antara 0 dan 9, dan kemudian memanggil metode addNumberToSink pada objek NumberStream untuk menambahkan angka tersebut ke dalam stream.


### Soal 7
```dart
addError() {
controller.addError('Error');
}
```
- Fungsi ini bertujuan untuk menambahkan kesalahan ke dalam sink suatu controller (mungkin sebuah StreamController). Metode addError pada objek controller dipanggil dengan parameter Error. Ini menandakan bahwa suatu kesalahan dengan pesan 'Error' akan ditambahkan ke dalam stream.

```dart
}).onError((error) {
setState(() {
lastNumber = -1;
});
numberStream.addError();
}
```
- Kode ini menangani kesalahan yang terjadi pada stream. Jika terjadi kesalahan dalam stream, fungsi yang diberikan kepada onError akan dipanggil dengan objek kesalahan (error). Dalam kasus ini, saat terjadi kesalahan, setState digunakan untuk memperbarui nilai lastNumber menjadi -1, mungkin untuk memberi tahu antarmuka pengguna bahwa terjadi kesalahan. Selanjutnya, numberStream.addError(); dipanggil, yang kemungkinan menambahkan kesalahan ke dalam stream numberStream. Namun, perlu diingat bahwa di dalam potongan kode yang diberikan, addError tidak menerima parameter, sehingga cara ini mungkin tidak sesuai dengan implementasi sebelumnya. Kemungkinan, seharusnya ada parameter atau nilai tertentu yang ditambahkan ke dalam stream untuk menandakan jenis kesalahan tertentu.

## 5. Praktikum 3: Injeksi data ke streams

### Soal 8
<img src ='assets/3.gif'>

- Kode Langkah 1-3 mengimplementasikan transformasi stream pada aplikasi Flutter. Ini menggunakan StreamTransformer untuk mengalikan nilai integer dalam stream dengan 10. Hasil transformasi dan penanganan kesalahan diterapkan, dan hasilnya diperbarui dalam state lastNumber untuk pembaruan antarmuka pengguna.

## 6. Praktikum 4: Subscribe ke stream events

### Soal 9
<img src='assets/img4.gif'>
1. Langkah 2
- Membuat subscription untuk memantau perubahan pada suatu stream.
- Ketika ada perubahan, nilai stream digunakan untuk memperbarui state lastNumber dan kemungkinan memperbarui antarmuka pengguna.
2. Langkah 6
- Membatalkan pemantauan terhadap stream jika tidak lagi diperlukan.
3. Langkah 8
- Menggunakan StreamController untuk mengirim data acak ke dalam stream.
- Menangani situasi di mana stream sudah ditutup dengan mengubah state lastNumber menjadi -1.

## Praktikum 5: Multiple stream subscriptions

### Soal 10
- Terjadi Error karena ada kode 2 listener.

### Soal 11
<img src='assets/img5.gif'>

- Karena pada saat Set broadcast stream, akan memanggil 2 listener yang akan mengembalikan nilai yang sama. Karena itu pada tampilan akan mengeluarkan 2 nilai yang sama.

## 8. Praktikum 6: StreamBuilder

### Soal 12
<img src='assets/img6.gif'>
- Langkah 3: digunakan untuk membuat stream yang mengenerate random number.
- Langkah 7: digunakan untuk mengimplimentasikan stream menggunakan StreamBuilder. Jika stream mendapatkan data maka akan menampilkan Text dengan nilai snapshot.data dan jika terjadi error maka akan melakukan log.

## Praktikum 7
### Soal 13
<img src='assets/img7.gif'>
- Praktikum ini menjelaskan cara menggunakan pola BLoC pada Flutter untuk membuat aplikasi yang lebih terorganisir dan mudah dirawat. Pola BLoC memisahkan logika bisnis dari tampilan, sehingga memudahkan pengembangan dan pemeliharaan aplikasi. Dalam praktikum ini, pola BLoC digunakan untuk menghasilkan nomor acak. Kelas RandomBloc bertanggung jawab untuk menghasilkan aliran data untuk nomor acak. Kelas RandomScreen bertanggung jawab untuk menampilkan nomor acak tersebut. Tombol refresh pada kelas RandomScreen digunakan untuk menghasilkan nomor acak baru. Tombol ini mentrigger fungsi generateRandom() pada kelas RandomBloc. Secara keseluruhan, praktikum ini menunjukkan cara menggunakan pola BLoC untuk membuat aplikasi Flutter yang lebih terorganisir.