void main() {

  //Langkah 1

  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Langkah 3

  // Membuat list final dengan panjang 5 dan nilai default null
  final List<dynamic> list = List.filled(5, null); 
  
  // Mengisi elemen index ke-1 dan ke-2 dengan nama dan NIM
  list[1] = "Raffi Ilham Maulana"; // Nama lengkap
  list[2] = "2241720226"; // NIM

  // Mencetak hasil
  print(list);         // Mencetak seluruh list
  print("Nama: ${list[1]}");  // Mencetak nama
  print("NIM: ${list[2]}");   // Mencetak NIM
}
