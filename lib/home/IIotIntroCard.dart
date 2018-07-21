import 'package:flutter/material.dart';

class HomeScreenUserDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        child: Card(
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.black26,
                        height: 75.0,
                      ),
                      new Positioned(
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "http://protornd.com/wp-content/uploads/2017/11/IoT-icon-e1510237610605.png"),
                            radius: 50.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "IIOT2k18",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "INDUSTRIAL INTERNET OF THINGS - 2K18",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                )
              ],
            )));
  }
}
