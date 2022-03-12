import 'package:DeveloperFolio/include/Rows/experiencemain.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ExpDesk(),
      tablet: ExpTab(),
      mobile: ExpMob(),
    );
  }
}
