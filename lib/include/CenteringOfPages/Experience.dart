import 'package:DeveloperFolio/include/Rows/experiencemain.dart';
import 'package:flutter/material.dart';

class ExperienceDesk extends StatelessWidget {
  const ExperienceDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(child: ExpDesk()),
        ],
      ),
    );
  }
}

class ExperienceMob extends StatelessWidget {
  const ExperienceMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpMob(),
        ],
      ),
    );
  }
}

class ExperienceTab extends StatelessWidget {
  const ExperienceTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpTab(),
        ],
      ),
    );
  }
}
