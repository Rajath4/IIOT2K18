import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Card(
      elevation: 5.0,
      margin: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          const ListTile(
            title: Text("Details about exhibition"),
          ),
        ],
      ),
    ));
  }
}
