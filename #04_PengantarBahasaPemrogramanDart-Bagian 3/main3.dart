void main() {
  // Langkah 1 - Menambahkan elemen pada gifts dan nobleGases

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Raffi Ilham Maulana', // Menambahkan nama
    'nim': '2241720226'            // Menambahkan NIM
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    100: 'Raffi Ilham Maulana', // Menambahkan nama
    101: '2241720226'           // Menambahkan NIM
  };

  print(gifts);
  print(nobleGases);

  // Langkah 3 - Menambahkan elemen pada mhs1 dan mhs2

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'Raffi Ilham Maulana'; // Menambahkan nama
  mhs1['nim'] = '2241720226';           // Menambahkan NIM

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[100] = 'Raffi Ilham Maulana'; // Menambahkan nama
  mhs2[101] = '2241720226';          // Menambahkan NIM

  // Print hasil
  print(mhs1);
  print(mhs2);
}
