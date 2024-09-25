void main() {
//   //Langkah 1
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);

//   // Langkah 3
//   var intRecord = (1, 2);
//   var swappedRecord = tukar(intRecord);
//   print(swappedRecord);
// }

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

//Langkah 4
// Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Raffi Ilham Maulana', 2241720226);
  print(mahasiswa);

// Langkah 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}
