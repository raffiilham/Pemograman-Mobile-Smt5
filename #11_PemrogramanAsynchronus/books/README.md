

# **3. Praktikum 1: Mengunduh Data dari Web Service (API)**

### Soal 1 Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo Raffi',
     theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
     home: const FuturePage(),
   );
 }
}

class FuturePage extends StatefulWidget {
 const FuturePage({Key? key}) : super(key: key);

 @override
 State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
 String result = '';

   Future<Response> getData() async {
      const authority = 'www.googleapis.com';
      const path = '/books/v1/volumes/qwVnDwAAQBAJ';
      Uri url = Uri.https(authority, path);
      return http.get(url);
  }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Back from the future'),
     ),
     body: Center(
       child: Column(children: [
         const Spacer(),
         ElevatedButton(
           child: const Text('GO!'),
           onPressed: () {},
         ),
         const Spacer(),
         Text(result),
         const Spacer(),
         const CircularProgressIndicator(),
         const Spacer(),
       ]),
     ),
   );
 }
}
```

### Soal 2 
- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
<img src='assets/img1.png'>
- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".
<img src='assets/img2.png'>

### Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W11: Soal 3**".

<img src='assets/img3.png'>

4. Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### **Soal 4**
- Jelaskan maksud kode langkah 1 dan 2 tersebut!<br>

**jawab :**

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".

<img src='assets/img4.gif'>

### 5. Praktikum 3: Menggunakan Completer di Future

### **Soal 5**
- Jelaskan maksud kode langkah 2 tersebut!

**jawab :**<br>

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W11: Soal 5**".

<img src='assets/img5.gif'>

