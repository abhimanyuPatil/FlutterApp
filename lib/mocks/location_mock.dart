import 'package:myfirstflutter/models/location.dart';
import 'package:myfirstflutter/models/location_fact.dart';

class MockLocation extends Location {
  static Location fetchAny() {
    return Location(
        name: 'Osho Center',
        url: 'https://miro.medium.com/max/900/0*HVylOmYuvQ10Yq7y.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          LocationFact(
              title: 'How to get there',
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
        ]);
  }
}
