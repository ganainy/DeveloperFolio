import 'package:elganainy_portfolio/configure/navigation_service.dart';
import 'package:elganainy_portfolio/configure/routing.dart';
import 'package:elganainy_portfolio/include/navbar/drawer/drawernav.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../include/navbar/navigationbar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            MyNavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
