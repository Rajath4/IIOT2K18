import 'package:flutter/material.dart';

class DeveloperProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fbom12-1.fna.fbcdn.net/v/t1.0-9/12509181_428113847397904_3254238677414032723_n.jpg?_nc_cat=0&oh=fb70dad6a7b19c984da1bb1ac43a4dcc&oe=5C103742"),
                        radius: 50.0,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Rajath",
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
                      "7th Sem CSE",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                )
              ],
            )));
  }
}
