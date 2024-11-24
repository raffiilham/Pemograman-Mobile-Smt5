import 'dart:async'; 
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo Raffi',
     theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
     home: const FuturePage(),
   );
 }
}

class FuturePage extends StatefulWidget {
 const FuturePage({Key? key}) : super(key: key);

 @override
 State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
 String result = '';

Future returnError() async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('Something terrible happened!');
}

void returnFG() {
  final futures = Future.wait<int>([
  returnOneAsync(),
  returnTwoAsync(),
  returnThreeAsync(),
]);
  // FutureGroup<int> futureGroup = FutureGroup<int>();
  // futureGroup.add(returnOneAsync());
  // futureGroup.add(returnTwoAsync());
  // futureGroup.add(returnThreeAsync());
  // futureGroup.close();
  // futureGroup.future.then((List <int> value) {
  //   int total = 0;
  //   for (var element in value) {
  //     total += element;
  //   }
  //   setState(() {
  //     result = total.toString();
  //   });
  // });
}

   late Completer<int> completer;

   Future getNumber() {
  completer = Completer<int>();
  calculate2();
  return completer.future; 
}

Future calculate2() async {
  try {
  await new Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
// throw Exception();
  }
  catch (_) {
    completer.completeError({});
  }
}

 Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}

Future count() async {
  int total = 0;
  total = await returnOneAsync();
  total += await returnOneAsync();
  total += await returnOneAsync();
  setState(() {
    result = total.toString();
  }); 
}

   Future<Response> getData() async {
      const authority = 'www.googleapis.com';
      const path = '/books/v1/volumes/qwVnDwAAQBAJ';
      Uri url = Uri.https(authority, path);
      return http.get(url);
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Back from the future'),
    ),
    body: Center(
      child: Column(children: [
        const Spacer(),
        ElevatedButton(
          child: const Text('GO!'),
          onPressed: () {
            returnError()
                .then((value) {
                  setState(() {
                    result = 'Success';
                  });
                })
                .catchError((onError) {
                  setState(() {
                    result = onError.toString();
                  });
                })
                .whenComplete(() => print('Complete'));
          },
        ),
        const Spacer(),
        Text(result),
        const Spacer(),
        const CircularProgressIndicator(),
        const Spacer(),
      ]),
    ),
  );
}

}