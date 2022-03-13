import 'package:flutter/material.dart';

import '../Rows/blogcardmain.dart';

class CoursesDesk extends StatelessWidget {
  const CoursesDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(child: CourseDesk()),
        ],
      ),
    );
  }
}

class CoursesMob extends StatelessWidget {
  const CoursesMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CourseMob();
  }
}

class CoursesTab extends StatelessWidget {
  const CoursesTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CourseTab();
  }
}
