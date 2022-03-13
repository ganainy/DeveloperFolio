import 'package:flutter/material.dart';

class SkillsLogoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What i do",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Interested by everything related to mobile development ",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/android.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/flutter.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/java.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/kotlin.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/database.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/api.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/firebase.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/maps.png'))),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Produce fully functional mobile applications both android native as well as cross platform",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Experience with third-party libraries, databases and APIs",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Stay up-to-date with new technology trends",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsLogoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "What i do",
          style:
              TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Interested by everything related to mobile development ",
          style: TextStyle(
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/android.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/flutter.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/java.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/kotlin.png'))),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/database.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/api.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/firebase.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/maps.png'))),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "⚡ Produce fully functional mobile applications both android native as well as cross platform",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "⚡ Experience with third-party libraries, databases and APIs",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "⚡ Stay up-to-date with new technology trends",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

class SkillsLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "What i do",
          style:
              TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Interested by everything related to mobile development ",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/android.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/flutter.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/java.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/kotlin.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/database.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/api.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/firebase.png'))),
            SizedBox(
              width: 5,
            ),
            Container(
                width: 35,
                height: 35,
                child: Image(image: AssetImage('assets/images/maps.png'))),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "⚡ Produce fully functional mobile applications both android native as well as cross platform",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "⚡ Experience with third-party libraries, databases and APIs",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "⚡ Stay up-to-date with new technology trends",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

/*class SkillsLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What i do",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Interested by everything related to mobile development ",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/android.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/flutter.png'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/java.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/kotlin.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/database.png'))),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/api.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child:
                        Image(image: AssetImage('assets/images/firebase.png'))),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image(image: AssetImage('assets/images/maps.png'))),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Produce fully functional mobile applications both android native as well as cross platform",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Experience with third-party libraries, databases and APIs",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "⚡ Stay up-to-date with new technology trends",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}*/
