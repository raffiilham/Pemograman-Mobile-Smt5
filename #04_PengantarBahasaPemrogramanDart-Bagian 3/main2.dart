void main() {
  // Langkah 1 - Set dengan elemen halogen
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astantine'};
  print(halogens);

  // Langkah 3
  var names1 = <String>{}; // Set kosong
  Set<String> names2 = {}; // Set kosong
  var names3 = <String, String>{}; // Map kosong

  // Menambahkan elemen nama dan NIM menggunakan .add() pada names1
  names1.add("Raffi Ilham Maulana"); // Nama
  names1.add("2241720226");          // NIM

  // Menambahkan elemen nama dan NIM menggunakan .addAll() pada names2
  names2.addAll({"Raffi Ilham Maulana", "2241720226"});

  // Menambahkan elemen ke map names3
  names3['nama'] = "Raffi Ilham Maulana";
  names3['nim'] = "2241720226";

  // Print hasil
  print(names1); // Set dengan nama dan NIM
  print(names2); // Set dengan nama dan NIM
  print(names3); // Map dengan nama dan NIM
}
