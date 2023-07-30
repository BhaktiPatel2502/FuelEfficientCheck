import 'package:flutter/material.dart';
import 'package:untitled8/vehicle_list_screen.dart';
import 'vehicle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fuel Efficient Vehicles')),
        body: VehicleList(),
      ),
    );
  }
}