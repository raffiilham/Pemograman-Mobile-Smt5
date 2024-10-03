import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// Langkah 4 praktikum 1

  @override
  Widget build(BuildContext context) {
    // Membuat titleSection

    

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0), // Padding 32 untuk Container utama
      child: Row(
        children: [
          Expanded(
            // Soal 1: Column di dalam Expanded dan tambahkan crossAxisAlignment
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Posisi kolom berada di awal baris
              children: [
                // Soal 2: Tambahkan Container dengan padding dan Text
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), // Padding bawah 8 piksel
                  child: const Text(
                    'Araya Arcade Garden By Rustic Market',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Mansion hill, Genitri, Tirtomoyo, Pakis,, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          // Soal 3: Tambahkan ikon bintang dan teks
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

  // Langkah 1 praktikum 2

    Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(

      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
    
  }

// Langkah 2 praktikum 2
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Araya Arcade Garden by Rustic Market adalah sebuah destinasi kuliner dan rekreasi di Kota Malang' 
    'yang menawarkan suasana yang nyaman dan alami. Terletak di kawasan Araya, tempat ini didesain'
    'dengan konsep taman terbuka yang hijau dan asri, cocok untuk berkumpul bersama keluarga atau teman.' 
    'Dengan berbagai pilihan kafe dan restoran, pengunjung dapat menikmati berbagai hidangan lezat' 
    'sambil bersantai di area outdoor yang dikelilingi pepohonan dan dekorasi modern.' 
    'Araya Arcade Garden menjadi tempat favorit untuk bersantai di akhir pekan atau menghabiskan' 
    'waktu dengan suasana yang tenang dan menyegarkan.',
    softWrap: true,
  ),
);

    // Memasukkan titleSection ke dalam body Scaffold
    return MaterialApp(
      title: 'Raffi 2241720226',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'rusticmarket.webp',
              width: 500,
              height: 245,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection, 
          ],
        ),
      ),
    );
  }

}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
