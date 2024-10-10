import 'package:auto_size_text/auto_size_text.dart'; // Tambahkan ini jika menggunakan AutoSizeText
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  final String text; // Definisi variabel `text`

  const RedTextWidget({Key? key, required this.text}) : super(key: key); // Tambahkan `required this.text` di konstruktor

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text, // Gunakan variabel `text`
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
