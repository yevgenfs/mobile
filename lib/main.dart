import 'package:flutter/material.dart';
import 'screens/FirstScreen.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:google_places_flutter/address_search.dart';
//import 'package:flutter_google_places/flutter_google_places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Weather Application',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new FirstScreen(),
    );
  }
}


