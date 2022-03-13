import 'dart:js' as js;

import 'package:elganainy_portfolio/configure/navigation_service.dart';
import 'package:elganainy_portfolio/configure/routing.dart';
import 'package:elganainy_portfolio/include/imagesmain/images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Text(
                "Hi ! I'm Amr Elganainy",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/english.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Hallo ! Ich bin Amr Elganainy",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1.3,
                    fontSize: 30,
                    color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/german.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "مرحبا ! انا عمرو الجنايني",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1.3,
                    fontSize: 20,
                    color: Colors.grey[400]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/arabic.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Junior native android and cross platform mobile developer.",
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Color.fromRGBO(40, 103, 178, 1),
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod("open",
                          ["https://www.linkedin.com/in/amr-elganainy/"]);
                    },
                  )),
              Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["https://www.github.com/ganainy"]);
                    },
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'Contact me',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/drive/folders/1ZIHmoZBYllS8mb545TFHASr5kgzBzxMJ?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      'View my resume',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Hi ! I'm Amr Elganainy",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Junior native android and cross platform mobile developer.",
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/amr-elganainy/"]);
                      },
                    )),
                Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.github.com/naveenjujaray"]);
                      },
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      'Contact me',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/drive/folders/1ZIHmoZBYllS8mb545TFHASr5kgzBzxMJ?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'View my resume',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          OneMob(),
          Text(
            "Hi ! I'm Amr Elganainy",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Egyptian junior native and cross platform mobile developer residing in Germany.",
            style: TextStyle(
              fontSize: 18,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Color.fromRGBO(40, 103, 178, 1),
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod("open",
                          ["https://www.linkedin.com/in/amr-elganainy/"]);
                    },
                  )),
              Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["https://www.github.com/ganainy"]);
                    },
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'Contact me',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/drive/folders/1ZIHmoZBYllS8mb545TFHASr5kgzBzxMJ?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      'View my resume',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class WelcomePageMob extends StatelessWidget {
//   const WelcomePageMob({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         width: 600,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 40,
//             ),
//             Center(
//               child: Text(
//                 "Hi ! I'm Amr Elganainy",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Text(
//                 "Junior native android and cross platform mobile developer.",
//                 style: TextStyle(
//                   fontSize: 16,
//                   height: 1.7,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                     width: 55,
//                     height: 55,
//                     child: IconButton(
//                       icon: Icon(
//                         FontAwesomeIcons.linkedin,
//                         color: Color.fromRGBO(40, 103, 178, 1),
//                         size: 40,
//                       ),
//                       onPressed: () {
//                         js.context.callMethod("open", [
//                           "https://drive.google.com/drive/folders/1ZIHmoZBYllS8mb545TFHASr5kgzBzxMJ?usp=sharing"
//                         ]);
//                       },
//                     )),
//                 Container(
//                     width: 55,
//                     height: 55,
//                     child: IconButton(
//                       icon: Icon(
//                         FontAwesomeIcons.github,
//                         size: 40,
//                       ),
//                       onPressed: () {
//                         js.context.callMethod(
//                             "open", ["https://www.github.com/naveenjujaray"]);
//                       },
//                     )),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () =>
//                         locator<NavigationService>().navigateTo(ContactRoute),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 15, vertical: 10),
//                       child: Text(
//                         'Contact me',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       js.context.callMethod("open", [
//                         "https://drive.google.com/file/d/1PZYWMJEQMLIh5g5mXnENQcOL1vlunq6_/view?usp=sharing"
//                       ]);
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 15, vertical: 10),
//                       child: Text(
//                         'View my resume',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w900,
//                           color: Colors.white,
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
