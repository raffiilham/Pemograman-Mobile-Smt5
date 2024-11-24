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
    super.initState();
    getPosition().then((Position myPos){
      myPosition = 'Latitude: ${myPos.latitude.toString()}, Longitude: ${myPos.longitude.toString()}';
      setState(() {
        myPosition = myPosition;
      });
    });

  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Current Location Raffi'),
  //     ),
  //     body: Center(
  //       child: Text(myPosition),
  //     ),
  //   );
  // }
    Widget build(BuildContext context){
    final myWidget = myPosition == ''
    ? const CircularProgressIndicator()
    : Text(myPosition);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location Raffi'),
      ),
      body: Center(
        child: myWidget),
    );

  }
  Future<Position> getPosition() async {
    await Future.delayed(const Duration(seconds: 3));
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}