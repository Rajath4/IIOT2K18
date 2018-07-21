import 'package:flutter/material.dart';
import 'package:iiot2k18/info/ImportantDaysTORemember.dart';
import 'package:iiot2k18/info/InfoExpansionList.dart';
import 'package:iiot2k18/info/ListOfDates.dart';

class InfoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionPanelsDemo(),
        Divider(),
        ImportantDatesCard(),
        ButtonOptions(),
      ],
    );
  }
}
