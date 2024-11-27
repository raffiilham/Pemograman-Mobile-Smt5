import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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

  void stopStream() {
    NumberStreamController.close();
  }

  late StreamSubscription subscription;

  late StreamTransformer transformer;
  
  int lastNumber = 0;
  late StreamController NumberStreamController;
  late NumberStream numberStream;

  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

    void changeColor() async{
    // SOAL 4
    // await for (var eventColor in colorStream.getColors()){
    //   setState(() {
    //     bgColor = eventColor;
    //   });

    // SOAL 5
    colorStream.getColors().listen((eventColor){
      setState(() {
        bgColor = eventColor;
      });
    });
    }

    void addRandomNumber() {
  Random random = Random();
  int myNum = random.nextInt(10);
  if (!NumberStreamController.isClosed) {
  numberStream.addNumberToSink(myNum);
  } else {
    setState(() {
      lastNumber = -1;
    });
  }
  // numberStream..addError();
}

    @override
  void dispose() {
    NumberStreamController.close();
    super.activate();
  }

  @override
void initState() {
  super.initState();

  numberStream = NumberStream();
  NumberStreamController = numberStream.controller;
  Stream stream = NumberStreamController.stream;

  subscription = stream.listen((event) {
    setState(() {
      lastNumber = event;
    });
  });

  subscription.onDone(() {
    print('OnDone was called');
  });
}


  
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Raffi'),
      ),
      body: 
      // Container(
      //   decoration: BoxDecoration(color: bgColor),
      // )
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(lastNumber.toString()),
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
             child: Text('New Random Number'),
             ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            )
          ],
        ),
      )
    );
  }
}
