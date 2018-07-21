import 'package:flutter/material.dart';
import 'package:iiot2k18/home/IIotIntroCard.dart';

import 'TimeRemaingCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeScreenUserDetailsCard(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TimeRemaingCard(),
        ),
        //SocialMediaLink(),
      ],
    );
  }
}
