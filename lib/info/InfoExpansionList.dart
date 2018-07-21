import 'package:flutter/material.dart';

enum _Location { Barbados, Bahamas, Bermuda }

typedef Widget DemoItemBodyBuilder<T>(DemoItem<T> item);
typedef String ValueToString<T>(T value);

class DualHeaderWithHint extends StatelessWidget {
  const DualHeaderWithHint({this.name, this.value, this.hint, this.showHint});

  final String name;
  final String value;
  final String hint;
  final bool showHint;

  Widget _crossFade(Widget first, Widget second, bool isExpanded) {
    return new AnimatedCrossFade(
      firstChild: first,
      secondChild: second,
      firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
      secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
      sizeCurve: Curves.fastOutSlowIn,
      crossFadeState:
          isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return new Row(children: <Widget>[
      new Expanded(
        flex: 2,
        child: new Container(
          margin: const EdgeInsets.only(left: 24.0),
          child: new FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: new Text(
              name,
              style: textTheme.body1.copyWith(fontSize: 15.0),
            ),
          ),
        ),
      ),
    ]);
  }
}

class CollapsibleBody extends StatelessWidget {
  const CollapsibleBody(
      {this.margin = EdgeInsets.zero, this.child, this.onSave, this.onCancel});

  final EdgeInsets margin;
  final Widget child;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return new Column(children: <Widget>[
      new Container(
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0) -
              margin,
          child: new Center(
              child: new DefaultTextStyle(
                  style: textTheme.caption.copyWith(fontSize: 15.0),
                  child: child))),
    ]);
  }
}

class DemoItem<T> {
  DemoItem({this.name, this.value, this.hint, this.builder, this.valueToString})
      : textController = new TextEditingController(text: valueToString(value));

  final String name;
  final String hint;
  final TextEditingController textController;
  final DemoItemBodyBuilder<T> builder;
  final ValueToString<T> valueToString;
  T value;
  bool isExpanded = false;

  ExpansionPanelHeaderBuilder get headerBuilder {
    return (BuildContext context, bool isExpanded) {
      return new DualHeaderWithHint(
          name: name,
          value: valueToString(value),
          hint: hint,
          showHint: isExpanded);
    };
  }

  Widget build() => builder(this);
}

class ExpansionPanelsDemo extends StatefulWidget {
  static const String routeName = '/material/expansion_panels';

  @override
  _ExpansionPanelsDemoState createState() => new _ExpansionPanelsDemoState();
}

class _ExpansionPanelsDemoState extends State<ExpansionPanelsDemo> {
  List<DemoItem<dynamic>> _demoItems;

  @override
  void initState() {
    super.initState();

    _demoItems = <DemoItem<dynamic>>[
      new DemoItem<String>(
        name: 'About IIOT',
        value: 'sdds',
        hint: 'sd',
        valueToString: (String value) => value,
        builder: (DemoItem<String> item) {
          void close() {
            setState(() {
              item.isExpanded = false;
            });
          }

          return new Form(
            child: new Builder(
              builder: (BuildContext context) {
                return new CollapsibleBody(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        "Internet of Things (IoT) is a trending and buzzword, which has created lot of excitement among the corporate sector, academia, research scholars and scientific community. It is envisioned as the next big revolution in the technical landscape. It deals with the network of physical objects or “things” embedded with electronics, software, sensors and network connectivity, which enables these objects to collect and exchange data. The advantages and capabilities of IoTare multifarious. The interconnection of devices will lead to a major paradigm shift, where the world will be heading towards an automated era, which will pave the way for new vertical and horizontal in the industry. The Internet of Things will include around 26 billion units installed by 2020, as predicted by Gartner.\n\nWhen a huge number of devices are being connected to existing network infrastructure, lot of open challenges will be thrown at technical community such as architecture and dependencies, massive scaling of devices, knowledge discovery and analytics of big data, standards for device monitoring and management, interoperability, data security and privacy etc. for the IoTplatform.\n\nTo address these open challenges, we at Shri Madhwa Vadiraja Institute of Technology & Management are organizing a “State Level Student Symposium and Project Exhibition Industrial Internet of Things (IIOT-2K17)” on November 10, 2017."),
                  ),
                );
              },
            ),
          );
        },
      ),
      new DemoItem<String>(
        name: 'A Glimpse of IOT 2K15',
        value: 'fsfd',
        hint: 'sdd',
        valueToString: (String value) => value,
        builder: (DemoItem<String> item) {
          void close() {
            setState(() {
              item.isExpanded = false;
            });
          }

          return new Form(
            child: new Builder(
              builder: (BuildContext context) {
                return new CollapsibleBody(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        "The Internet of Things (IOT) refers to the networking of physical objects through the use of embedded sensors, actuators, and other devices that can collect or transmit information about the objects. Applications based on this emerging technology are increasingly being introduced in a number industries such as healthcare, smart home and office solutions, automobile, pharmaceuticals, electronic gadgets, retail, industrial automation, smart scientific products, education, agriculture, traffic management, gas and water supply system etc. The Multifunctional Smart Fitness Band, explores the potential of the technology. The device offers a wide range of applications in the healthcare sector and is capable of measuring and monitoring several vital physical parameters such as heart rate, temperature, energy burnt etc."),
                  ),
                );
              },
            ),
          );
        },
      ),
      new DemoItem<String>(
        name: 'A Glimpse of IIOT 2K16',
        value: '',
        hint: '',
        valueToString: (String value) => value,
        builder: (DemoItem<String> item) {
          void close() {
            setState(() {
              item.isExpanded = false;
            });
          }

          return new Form(
            child: new Builder(
              builder: (BuildContext context) {
                return new CollapsibleBody(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: new Column(
                        children: <Widget>[
                          Image.network(
                              "http://sode-edu.in/wp-content/uploads/2017/03/MG_8709.jpg"),
                          Divider(),
                          Text(
                              "Passing on the good work initiated from the Inter-Department competition held during August, 2015, “State Level student symposium cum project exhibition, IIOT 2K16” was held in the month of November 2016. More than 30 teams from all over Karnataka participated in this event. Varieties of projects were displayed and many exciting prizes were distributed. Many of the projects were applicable in all aspects of daily life. Models of Process Automation, Agri Copter, Automated Paddy Trans-planter to support the farmers, Automation Dry-Wet Waste collection to support Swach Bharath Abhiyan, were few from the projects exhibited in this forum. The driving philosophy behind the IIOT 2K16 was to motivate the young minds to work together and exhibit their real talents,also to think towards building some smarter appliances using the trending technology of Internet of Things to help the larger community to get an appropriate solution to their real life issues."),
                        ],
                      )),
                );
              },
            ),
          );
        },
      ),
      new DemoItem<String>(
        name: 'A Glimpse of IIOT 2K17',
        value: '',
        hint: '',
        valueToString: (String value) => value,
        builder: (DemoItem<String> item) {
          void close() {
            setState(() {
              item.isExpanded = false;
            });
          }

          return new Form(
            child: new Builder(
              builder: (BuildContext context) {
                return new CollapsibleBody(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                              "http://sode-edu.in/wp-content/uploads/2017/11/PUP_0339.jpg"),
                          Divider(),
                          Text(
                              "Passing on the good work initiated from the Inter-Department competition held during August, 2015, “State Level student symposium cum project exhibition, IIOT 2K16” was held in the month of November 2016. More than 30 teams from all over Karnataka participated in this event. Varieties of projects were displayed and many exciting prizes were distributed. Many of the projects were applicable in all aspects of daily life. Models of Process Automation, Agri Copter, Automated Paddy Trans-planter to support the farmers, Automation Dry-Wet Waste collection to support Swach Bharath Abhiyan, were few from the projects exhibited in this forum. The driving philosophy behind the IIOT 2K16 was to motivate the young minds to work together and exhibit their real talents,also to think towards building some smarter appliances using the trending technology of Internet of Things to help the larger community to get an appropriate solution to their real life issues."),
                        ],
                      )),
                );
              },
            ),
          );
        },
      ),
      new DemoItem<String>(
        name: 'Guidelines for Project Submission',
        value: '',
        hint: '',
        valueToString: (String value) => value,
        builder: (DemoItem<String> item) {
          void close() {
            setState(() {
              item.isExpanded = false;
            });
          }

          return new Form(
            child: new Builder(
              builder: (BuildContext context) {
                return new CollapsibleBody(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        "Each team may comprise minimum one member and a maximum of four members. Interdisciplinary teams comprising members from different branches are also allowed.\n\nOnly working project models are allowed at the competition. Poster or paper presentation will not be allowed.\n\nEach team must submit the general electrical and networking infrastructure required for their project demonstration along with the registration form.\n\nThe project report has to be prepared in MS Word document and must reach the given contact email id on or before last date of registration."),
                  ),
                );
              },
            ),
          );
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new SafeArea(
        top: false,
        bottom: false,
        child: new Container(
          margin: const EdgeInsets.all(24.0),
          child: new ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _demoItems[index].isExpanded = !isExpanded;
                });
              },
              children: _demoItems.map((DemoItem<dynamic> item) {
                return new ExpansionPanel(
                    isExpanded: item.isExpanded,
                    headerBuilder: item.headerBuilder,
                    body: item.build());
              }).toList()),
        ),
      ),
    );
  }
}
