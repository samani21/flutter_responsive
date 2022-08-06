import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final desktopBody;
  final browserBody;

  ResponsiveLayout(
      {required this.mobileBody,
      required this.desktopBody,
      required this.browserBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        }
        if (constraints.maxWidth < desktopWidth) {
          return desktopBody;
        } else {
          return browserBody;
        }
      },
    );
  }
}
