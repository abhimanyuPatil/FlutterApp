import 'package:flutter/material.dart';
import 'package:myfirstflutter/Styles.dart';
import 'package:myfirstflutter/location_detail.dart';
import 'package:myfirstflutter/models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> locationList;
  LocationList(this.locationList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
          itemCount: this.locationList.length, itemBuilder: _listItem),
    );
  }

  Widget _listItem(BuildContext context, int index) {
    var current = this.locationList[index];
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      leading: _itemThumbnail(current),
      title: _itemTitle(current),
      onTap: () => _navigate(context, current),
    );
  }

  void _navigate(BuildContext context, Location location) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetails(location)));
  }

  Widget _itemThumbnail(Location location) {
    return Container(
        constraints: BoxConstraints.tightFor(width: 100.0),
        child: Image.network(location.url, fit: BoxFit.fitWidth));
  }

  Widget _itemTitle(Location location) {
    return Text(
      location.name,
      style: Styles.largeText,
    );
  }
}
