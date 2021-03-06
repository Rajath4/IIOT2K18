import 'package:flutter/material.dart';

class Dates {
  Dates(this.Month, this.Day, this.eventInfo);

  final String Month;
  final String Day;
  final String eventInfo;
}

final List<Dates> _date = <Dates>[
  new Dates("Judge", "1", "Details"),
  new Dates("Judge", "2", "Details"),
  new Dates("Judge", "3", "Details"),
];

class ListOfJudges extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonOptionsState();
  }
}

class ButtonOptionsState extends State<ListOfJudges> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 3,
            // itemExtent: 10.0,
            // reverse: true, //makes the list appear in descending order
            itemBuilder: (BuildContext context, int index) {
              return _buildItems(index);
            }));
  }
}

Widget _buildItems(int index) {
  Dates myCard = _date[index];
  return Container(
    child: Center(
      child: Card(
        elevation: 5.0,
        child: InkWell(
          highlightColor: Colors.amberAccent,
          splashColor: Colors.amber,
          onTap: () {},
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  myCard.Month,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Text(
                myCard.Day,
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(myCard.eventInfo),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
