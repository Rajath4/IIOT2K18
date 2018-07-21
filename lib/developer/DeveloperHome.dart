import 'package:flutter/material.dart';
import 'package:iiot2k18/developer/DeveloperProfileCard.dart';

class DeveloperHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: <Widget>[
        DeveloperProfileCard(),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://applets.imgix.net/https%3A%2F%2Fassets.ifttt.com%2Fimages%2Fchannels%2F33%2Ficons%2Fon_color_large.png%3Fversion%3D0?ixlib=rails-2.1.3&w=240&h=240&auto=compress&s=e4d241e7bbdcfc4f7d80858af1afc2b1",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("ykrajath4@gmail.com")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        //Phone
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "http://www.myiconfinder.com/uploads/iconsets/12918a9f351955eb3242ce0e52198993.png",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("+91 9591708470")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        //LinkedIn
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbmT43ntKUXg9BIUFoaDf_57kerix9jVC3BccpZUADGf-BHLj7",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text("http://www.linkedin.com/in/rajathyk")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        //Whatsapp
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://www.silicon.es/wp-content/uploads/2014/01/logowhatsappsolo.png",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("+91 9591708470")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        //Facebook
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "http://www.canadiancapsnetwork.com/wp-content/uploads/2017/12/FB-Logo.png",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("www.facebook.com/ykrajath")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        //Github
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRupG0Y2YjsY1FdwJx89vf4eR8GCXZ6_Szp6ybpuWQilEGhh3KMJg",
                          matchTextDirection: true,
                          height: 30.0,
                          width: 30.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("www.github.com/Rajath4")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
