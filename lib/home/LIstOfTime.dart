import 'package:flutter/material.dart';
import 'package:iiot2k18/home/TimeFromNow.dart';

class ShowTimeCard extends StatelessWidget {
  DateTime berlinWallFell = new DateTime.utc(2018, DateTime.OCTOBER, 27, 4);
  DateTime now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    Duration calculatedTime = berlinWallFell.difference(now);
    String days = calculatedTime.inDays.toString();
    String hours =
        (calculatedTime.inHours - (calculatedTime.inDays * 24)).toString();
    String minutes =
        (calculatedTime.inMinutes - (calculatedTime.inHours * 60)).toString();
    String seconds =
        (calculatedTime.inSeconds - (calculatedTime.inMinutes * 60)).toString();
    return Material(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 120.0,
          child: Center(
            child: Center(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ShowRemaing(name: "Days", time: days),
                  ShowRemaing(name: "Hours", time: hours),
                  ShowRemaing(name: "Minutes", time: minutes),
                  ShowRemaing(name: "Seconds", time: seconds),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
