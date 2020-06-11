import 'package:flutter/material.dart';
import 'package:myfirstflutter/location_detail.dart';
import 'package:myfirstflutter/mocks/location_mock.dart';
import 'package:myfirstflutter/models/location.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  final Location mockLocation = MockLocation.fetchAny();
  return runApp(MaterialApp(home: LocationDetails(mockLocation)));
}
