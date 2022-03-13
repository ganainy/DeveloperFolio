import 'package:elganainy_portfolio/include/CenteringOfPages/Achievement.dart';
import 'package:elganainy_portfolio/include/CenteringOfPages/ContactCenter.dart';
import 'package:elganainy_portfolio/include/CenteringOfPages/Education.dart';
import 'package:elganainy_portfolio/include/CenteringOfPages/Experience.dart';
import 'package:elganainy_portfolio/include/CenteringOfPages/skills_desk.dart';
import 'package:elganainy_portfolio/include/Rows/skillslogosmain.dart';
import 'package:elganainy_portfolio/include/Rows/welcomepagemain.dart';
import 'package:elganainy_portfolio/include/imagesmain/images.dart';
import 'package:elganainy_portfolio/pages/footer.dart';
import 'package:elganainy_portfolio/pages/welcome.dart';
import 'package:flutter/material.dart';

import '../CenteringOfPages/Blogcenter.dart';
import '../Rows/educationmain.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  var _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        controller: _controller,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 48,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: WelcomePage()),
                        Expanded(child: OneDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: SkillsLogoDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(child: AchievementDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(child: EduDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(child: ExperienceDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(child: CoursesDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(child: ContactCenterDesk()),
                        Expanded(
                          child: FourDesk(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Expanded(child: FooterPage()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageMob(),
                SectionSeperator(),
                SkillsMob(),
                SectionSeperator(),
                AchievementMob(),
                SectionSeperator(),
                ExperienceMob(),
                SectionSeperator(),
                EducationMob(),
                SectionSeperator(),
                CoursesMob(),
                SectionSeperator(),
                ContactCenterMob(),
                SizedBox(
                  height: 50,
                ),
                FooterPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget SectionSeperator() {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Divider(
        height: 1,
        thickness: 2,
        color: Colors.blueGrey,
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageTab(),
                SectionSeperator(),
                SkillsTab(),
                SectionSeperator(),
                ExperienceTab(),
                SectionSeperator(),
                EducationTab(),
                SectionSeperator(),
                AchievementTab(),
                SectionSeperator(),
                CoursesTab(),
                SectionSeperator(),
                ContactCenterTab(),
                SizedBox(
                  height: 50,
                ),
                FooterMob(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
