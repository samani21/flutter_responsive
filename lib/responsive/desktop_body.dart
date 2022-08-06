import 'package:flutter/material.dart';
import 'package:flutter_responsive/pages/homepage_desktop.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawerDesktop extends StatefulWidget {
  const HiddenDrawerDesktop({Key? key}) : super(key: key);

  @override
  State<HiddenDrawerDesktop> createState() => _HiddenDrawerDesktopState();
}

class _HiddenDrawerDesktopState extends State<HiddenDrawerDesktop> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Desktop',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
          ),
          HomePageDesktop()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade300,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 30,
    );
  }
}
