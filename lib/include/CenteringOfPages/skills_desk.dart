import 'package:elganainy_portfolio/include/Rows/skillslogosmain.dart';
import 'package:elganainy_portfolio/include/imagesmain/images.dart';
import 'package:flutter/material.dart';

class SkillsDesk extends StatelessWidget {
  const SkillsDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SkillsLogoDesk();
  }
}

class SkillsMob extends StatelessWidget {
  const SkillsMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillsLogoMob(),
          TwoMob(),
        ],
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  const SkillsTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SkillsLogoTab(),
          TwoTab(),
        ],
      ),
    );
  }
}
