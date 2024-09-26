void main() {
  // // Langkah 1 - Set dengan elemen halogen
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astantine'};
  // print(halogens);

  // Langkah 3
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

names1.add('Raffi Ilham Maulana');
names1.add('2241720226');

names2.addAll({'Raffi Ilham Maulana', '2241720226'});

print(names1);
print(names2);
print(names3);
}
