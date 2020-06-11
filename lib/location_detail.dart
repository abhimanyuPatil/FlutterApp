import 'package:flutter/material.dart';
import 'package:myfirstflutter/models/location.dart';

class LocationDetails extends StatelessWidget {
  final Location location;
  LocationDetails(this.location);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _renderBody(context, location)));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 200));
    result.addAll(_renderFacts(location));
    return result;
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result
          .add(_sectionTitle(location.facts[i].title, location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title, String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24.0, color: Colors.black54),
            ),
            Text(
              text,
              textAlign: TextAlign.left,
            )
          ],
        ));
  }

  Widget section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Text(title),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
