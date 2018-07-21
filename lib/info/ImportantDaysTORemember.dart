import 'package:flutter/material.dart';

class ImportantDatesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: const Icon(Icons.event),
            title: Text("Important Dates to Remeber"),
          ),
        ],
      ),
    );
  }
}
