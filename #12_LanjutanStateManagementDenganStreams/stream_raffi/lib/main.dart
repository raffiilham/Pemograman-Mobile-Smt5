import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Raffi',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {

  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

    void changeColor() async{
    // SOAL 4
    await for (var eventColor in colorStream.getColors()){
      setState(() {
        bgColor = eventColor;
      });
    }
    }

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Raffi'),
      ),
      body: 
      Container(
        decoration: BoxDecoration(color: bgColor),
      ));
  }
}