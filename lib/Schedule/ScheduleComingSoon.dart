import 'package:flutter/material.dart';

class ScheduleComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: <Widget>[
            Center(
                child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Text("Coimg soon !!! Stay Updated"),
            ))
          ],
        ),
      ),
    );
  }
}
