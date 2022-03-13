import 'package:elganainy_portfolio/include/Rows/experiencemain.dart';
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
    return ExpMob();
  }
}

class ExperienceTab extends StatelessWidget {
  const ExperienceTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpTab();
  }
}
