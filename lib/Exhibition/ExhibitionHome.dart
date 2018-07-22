import 'package:flutter/material.dart';
import 'package:iiot2k18/Exhibition/HeaderCard.dart';
import 'package:iiot2k18/Exhibition/InfoCard.dart';
import 'package:iiot2k18/Exhibition/ListOfJudges.dart';
import 'package:iiot2k18/Exhibition/OurJudgesTitle.dart';

class ExhibitionHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          children: <Widget>[
            HeaderCard(),
            InfoCard(),
            OurJudgesTitleCard(),
            ListOfJudges(),
          ],
        ),
      ),
    );
  }
}
