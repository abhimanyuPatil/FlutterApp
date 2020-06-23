import 'package:flutter/material.dart';
import 'package:myfirstflutter/location_list.dart';
import 'package:myfirstflutter/mocks/location_list_mock.dart';
import 'package:myfirstflutter/models/location.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  final List<Location> mockLocations = MockLocation.fetchAll();
  return runApp(MaterialApp(home: LocationList(mockLocations)));
}
