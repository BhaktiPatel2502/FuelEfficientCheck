import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'vehicle.dart';

class VehicleList extends StatelessWidget {
  // final List<Vehicle> vehicles;
  final List<Vehicle> vehicles = [
    Vehicle("Vehicle A", 20, 3),
    Vehicle("Vehicle B", 12, 6),
    Vehicle("Vehicle C", 16, 2),
    Vehicle("Vehicle D", 16, 7),
    Vehicle("Vehicle E", 11, 5),
    Vehicle("Vehicle F", 17, 4),
    Vehicle("Vehicle G", 10, 1),
    Vehicle("Vehicle H", 16, 7),
    // Add more vehicles as needed
  ];

 // VehicleList(this.vehicles);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vehicles.length,
      itemBuilder: (context, index) {
        final vehicle = vehicles[index];
        final colorCode = getColorCode(vehicle.fuelEfficiency, vehicle.age);
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ListTile(
            title: Text(vehicle.name),
            subtitle: Text('Fuel Efficiency: ${vehicle.fuelEfficiency} km/l  age: ${vehicle.age}'),
            leading: CircleAvatar(
              backgroundColor: colorCode,
              child: Icon(Icons.directions_car),
            ),
          ),
        );
      },
    );
  }
}

Color getColorCode(double fuelEfficiency, int age) {
  if (fuelEfficiency >= 15 && age <= 5) {
    return Colors.green; // Fuel efficient and low pollutant
  } else if (fuelEfficiency >= 15 && age > 5) {
    return Colors.amber; // Fuel efficient but moderately pollutant
  } else {
    return Colors.red; // Everything else
  }
}