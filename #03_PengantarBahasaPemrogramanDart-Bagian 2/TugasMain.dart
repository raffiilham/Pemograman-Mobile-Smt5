void main() {
  // Nama dan NIM
  String name = "Raffi Ilham Maulana";
  String nim = "2241720226";
  
  // Loop untuk mencari bilangan prima dari 0 hingga 201
  for (int number = 2; number <= 201; number++) {
    if (isPrime(number)) {
      print("$number adalah bilangan prima.");
      print("Nama lengkap: $name");
      print("NIM: $nim");
    }
  }
}

// Fungsi untuk mengecek apakah sebuah bilangan prima
bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
