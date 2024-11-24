import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position;

  @override
  void initState() {
    // super.initState();
    // getPosition().then((Position myPos){
    //   myPosition = 'Latitude: ${myPos.latitude.toString()}, Longitude: ${myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
    super.initState();
    position = getPosition();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Current Location Nadila'),
  //     ),
  //     body: Center(
  //       child: Text(myPosition),
  //     ),
  //   );
  // }
    Widget build(BuildContext context){
    // final myWidget = myPosition == ''
    // ? const CircularProgressIndicator()
    // : Text(myPosition);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Current Location Nadila'),
    //   ),
    //   body: Center(
    //     child: myWidget,
    //   ),
    // );

    //Praktikum 7
    return Scaffold(
      appBar: AppBar(title: Text('Current Location Raffi'),),
      body: Center(child: FutureBuilder(
        future: position, 
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else if(snapshot.connectionState==ConnectionState.done){
            return Text(snapshot.data.toString());
          }else if(snapshot.connectionState==ConnectionState.done){
            if(snapshot.hasError){
              return Text('Something terrible happened!');
            }
            return Text(snapshot.data.toString());
          }
          else{
            return const Text('');
          }
        }),),
    );
  }
  Future<Position> getPosition() async {
    await Future.delayed(const Duration(seconds: 2));
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}