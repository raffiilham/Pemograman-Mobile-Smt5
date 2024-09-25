void main() {
  // // Langkah 1
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print("List: $list");
  // print("List2: $list2");
  // print("Panjang List2: ${list2.length}");

  // // Langkah 3
  // var list1 = [1, 2, null];
  // print("List1: $list1");
  // var list3 = [0, ...list1];
  // print("List3: $list3");
  // print("Panjang List3: ${list3.length}");

  // // Menambahkan variabel list dengan NIM menggunakan Spread Operators
  // var nimList = [2241720226];
  // var combinedList = [0, ...nimList];
  // print("Combined List: $combinedList");
  // print("Panjang Combined List: ${combinedList.length}");

  // // Langkah 4
  // bool promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // promoActive = false;
  // nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // // Langkah 5
  // String login = 'Manager';
  // var nav2 = [
  // 'Home',
  // 'Furniture',
  // 'Plants',
  // if (login == 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // login = 'User';
  // nav2 = [
  // 'Home',
  // 'Furniture',
  // 'Plants',
  // if (login == 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

}
