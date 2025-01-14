import 'package:elganainy_portfolio/include/Rows/achievementsmain.dart';
import 'package:flutter/material.dart';

class AchievementDesk extends StatelessWidget {
  const AchievementDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(child: AchieveDesk()),
        ],
      ),
    );
  }
}

class AchievementTab extends StatelessWidget {
  const AchievementTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          AchieveTab(),
        ],
      ),
    );
  }
}

class AchievementMob extends StatelessWidget {
  const AchievementMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          AchieveMob(),
        ],
      ),
    );
  }
}
/*
class AchievementTab extends StatelessWidget {
  const AchievementTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AchieveTab(),
        ],
      ),
    );
  }
}*/
