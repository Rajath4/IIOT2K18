import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  double _miles = 0.0;

  @override
  initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = _controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return new Scaffold(
      body: new Material(
        color: const Color.fromRGBO(246, 251, 8, 1.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new AnimatedBuilder(
                animation: _animation,
                builder: (BuildContext context, Widget child) {
                  return new Text(
                    _animation.value.toStringAsFixed(1),
                    style: textTheme.display4
                        .copyWith(fontStyle: FontStyle.italic),
                  );
                },
              ),
              new Text(
                "MILES",
                style: textTheme.display1.copyWith(fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.directions_run),
          onPressed: () {
            Random rng = new Random();
            setState(() {
              DateTime berlinWallFell =
                  new DateTime.utc(2018, DateTime.NOVEMBER, 9);
              DateTime now = new DateTime.now();
              Duration calculatedTime = berlinWallFell.difference(now);

              String days = calculatedTime.inDays.toString();
              String hours =
                  (calculatedTime.inHours - (calculatedTime.inDays * 24))
                      .toString();
              String minutes =
                  (calculatedTime.inMinutes - (calculatedTime.inHours * 60))
                      .toString();
              String seconds =
                  (calculatedTime.inSeconds - (calculatedTime.inMinutes * 60))
                      .toString();

              _miles = (calculatedTime.inSeconds -
                  (calculatedTime.inMinutes * 60)) as double;
              _animation = new Tween<double>(
                begin: _animation.value,
                end: _miles,
              ).animate(new CurvedAnimation(
                curve: Curves.fastOutSlowIn,
                parent: _controller,
              ));
            });
            _controller.forward(from: 0.0);
          }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
