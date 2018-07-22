import 'package:flutter/material.dart';

class ShowRemaing extends StatelessWidget {
  final String name;
  final String time;

  const ShowRemaing({
    Key key,
    @required this.name,
    @required this.time,
  })  : assert(name != null),
        assert(time != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: InkWell(
          highlightColor: Colors.amberAccent,
          splashColor: Colors.amber,
          onTap: () {
            print("I was tapped");
          },
          child: Center(
            child: Column(
              children: <Widget>[
                Center(
                    child: Text(
                  name,
                      style: TextStyle(color: Colors.orange, fontSize: 16.0),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 20.0,
                    color: Colors.black26,
                    child: new Container(
                      //width: 50.0,
                      //height: 50.0,
                      padding: const EdgeInsets.all(20.0),
                      //I used some padding without fixed width and height
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        // You can use like this way or like the below line
                        //borderRadius: new BorderRadius.circular(30.0),
                        color: Colors.black12,
                      ),
                      child: new Text(time,
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize:
                                  25.0)), // You can add a Icon instead of text also, like below.
                    ), //..........
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
