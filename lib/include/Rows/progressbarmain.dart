import 'package:flutter/material.dart';

class SkillBarDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Proficiency',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Frontend/Design',
            style: TextStyle(fontSize: 18),
          ),
          CircularProgressIndicator(),
          Text(
            'Adobe Photoshop/Premiere pro',
            style: TextStyle(fontSize: 18),
          ),
          CircularProgressIndicator(),
          Text(
            'Programming',
            style: TextStyle(fontSize: 18),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class SkillBarTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Proficiency',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Frontend/Design',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
            Text(
              'Adobe Photoshop/Premiere pro',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
            Text(
              'Programming',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class SkillBarMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Proficiency',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Frontend/Design',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
            Text(
              'Adobe Photoshop/Premiere pro',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
            Text(
              'Programming',
              style: TextStyle(fontSize: 18),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
