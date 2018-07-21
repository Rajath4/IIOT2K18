import 'package:flutter/material.dart';
import 'package:iiot2k18/Schedule/ScheduleComingSoon.dart';
import 'package:iiot2k18/developer/DeveloperHome.dart';
import 'package:iiot2k18/home/HomePage.dart';
import 'package:iiot2k18/info/InfoHome.dart';

class NavigationIconView {
  NavigationIconView({
    Widget icon,
    Widget activeIcon,
    String title,
    Color color,
    Widget currentTab,
    TickerProvider vsync,
  })  : _icon = icon,
        _color = color,
        _title = title,
        _nowShowingWidget = currentTab,
        item = new BottomNavigationBarItem(
          icon: icon,
          //activeIcon: activeIcon,
          title: new Text(title),
          backgroundColor: color,
        ),
        controller = new AnimationController(
          duration: kThemeAnimationDuration,
          vsync: vsync,
        ) {
    _animation = new CurvedAnimation(
      parent: controller,
      curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
  }

  final Widget _icon;
  final Color _color;
  final String _title;
  final Widget _nowShowingWidget;
  final BottomNavigationBarItem item;
  final AnimationController controller;
  CurvedAnimation _animation;

  FadeTransition transition(
      BottomNavigationBarType type, BuildContext context) {
    Color iconColor;
    Widget myCurentTab;
    if (type == BottomNavigationBarType.shifting) {
      iconColor = _color;
      myCurentTab = _nowShowingWidget;
    } else {
      final ThemeData themeData = Theme.of(context);
      iconColor = themeData.brightness == Brightness.light
          ? themeData.primaryColor
          : themeData.accentColor;
      myCurentTab = _nowShowingWidget;
    }

    return new FadeTransition(
      opacity: _animation,
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: const Offset(0.0, 0.00), // Slightly down.
          end: Offset.zero,
        ).animate(_animation),
        child: myCurentTab,
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);
    return new Container(
      margin: const EdgeInsets.all(4.0),
      width: iconTheme.size - 8.0,
      height: iconTheme.size - 8.0,
      color: iconTheme.color,
    );
  }
}

class CustomInactiveIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);
    return new Container(
        margin: const EdgeInsets.all(4.0),
        width: iconTheme.size - 8.0,
        height: iconTheme.size - 8.0,
        decoration: new BoxDecoration(
          border: new Border.all(color: iconTheme.color, width: 2.0),
        ));
  }
}

class BottomNavigationDemo extends StatefulWidget {
  static const String routeName = '/material/bottom_navigation';

  @override
  _BottomNavigationDemoState createState() => new _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  BottomNavigationBarType _type = BottomNavigationBarType.shifting;
  List<NavigationIconView> _navigationViews;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: const Icon(Icons.home),
        title: 'Home',
        color: Colors.deepPurple,
        vsync: this,
        currentTab: HomePage(),
      ),
      new NavigationIconView(
        activeIcon: new CustomIcon(),
        icon: const Icon(Icons.info),
        title: 'Info',
        color: Colors.deepOrange,
        vsync: this,
        currentTab: InfoHome(),
      ),
      new NavigationIconView(
        activeIcon: const Icon(Icons.ac_unit),
        icon: const Icon(Icons.ac_unit),
        title: 'Exhibition',
        color: Colors.teal,
        vsync: this,
        currentTab: ScheduleComingSoon(),
      ),
      new NavigationIconView(
        activeIcon: const Icon(Icons.account_balance_wallet),
        icon: const Icon(Icons.account_balance_wallet),
        title: 'Conference',
        color: Colors.indigo,
        vsync: this,
        currentTab: ScheduleComingSoon(),
      ),
      new NavigationIconView(
        icon: const Icon(Icons.person),
        title: 'Developer',
        color: Colors.pink,
        vsync: this,
        currentTab: DeveloperHome(),
      )
    ];

    for (NavigationIconView view in _navigationViews)
      view.controller.addListener(_rebuild);

    _navigationViews[_currentIndex].controller.value = 1.0;
  }

  @override
  void dispose() {
    for (NavigationIconView view in _navigationViews) view.controller.dispose();
    super.dispose();
  }

  void _rebuild() {
    setState(() {
      // Rebuild in order to animate views.
    });
  }

  Widget _buildTransitionsStack() {
    final List<FadeTransition> transitions = <FadeTransition>[];

    for (NavigationIconView view in _navigationViews)
      transitions.add(view.transition(_type, context));

    // We want to have the newly animating (fading in) views on top.
    transitions.sort((FadeTransition a, FadeTransition b) {
      final Animation<double> aAnimation = a.opacity;
      final Animation<double> bAnimation = b.opacity;
      final double aValue = aAnimation.value;
      final double bValue = bAnimation.value;
      return aValue.compareTo(bValue);
    });

    return new Stack(children: transitions);
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationView) => navigationView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: _type,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
        });
      },
    );

    return new Scaffold(
      /*appBar: new AppBar(
        title: const Text('IIOT 2k18'),
        backgroundColor: Colors.black54,
      ),*/
      body: new Center(child: _buildTransitionsStack()),
      bottomNavigationBar: botNavBar,
    );
  }
}
