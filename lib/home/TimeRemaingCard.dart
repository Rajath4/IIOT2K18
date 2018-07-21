import 'package:flutter/material.dart';
import 'package:iiot2k18/home/LIstOfTime.dart';

class TimeRemaingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5.0,
              margin: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: const Icon(Icons.event_available),
                    title: Text("GOING TO LIVE IN"),
                  ),
                ],
              ),
            )),
        Card(
          elevation: 8.0,
          child: ShowTimeCard(),
        ),
      ],
    );
  }
}
