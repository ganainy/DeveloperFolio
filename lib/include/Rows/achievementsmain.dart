import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Project({
  @required ProjectModel project,
}) {
  print('widgeeeeeeeeeeeeeeeeeeeeeet ${project.appName}');
  return Row(
    children: [
      Container(
        width: 300,
        height: 316,
        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withOpacity(0.5),
            boxShadow: [
              new BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                spreadRadius: 5,
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              project.assetImage,
              fit: BoxFit.contain,
              width: 250,
              height: 175,
            ),
            Text(
              project.appName,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
                onTap: () {
                  js.context.callMethod("open", [project.githubLink]);
                },
                child: Text(
                  'View on Github',
                  style: TextStyle(fontSize: 18, color: Colors.green[900]),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 8,
            ),
            project.googlePlayLink == null
                ? Text(
                    'Soon on playstore',
                    style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  )
                : InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.googlePlayLink]);
                    },
                    child: Text(
                      'Get on playstore',
                      style: TextStyle(fontSize: 18, color: Colors.green[900]),
                      textAlign: TextAlign.center,
                    )),
          ],
        ),
      ),
      SizedBox(
        width: 25,
      ),
    ],
  );
}

class ProjectModel {
  String appName;
  String assetImage;
  String googlePlayLink;
  String githubLink;

  ProjectModel({
    @required String this.appName,
    @required String this.assetImage,
    String this.googlePlayLink,
    @required String this.githubLink,
  });
}

class AchieveDesk extends StatefulWidget {
  @override
  State<AchieveDesk> createState() => _AchieveDeskState();
}

class _AchieveDeskState extends State<AchieveDesk> {
  List<ProjectModel> projects = [
    ProjectModel(
        githubLink: 'https://github.com/ganainy/GymMasters/tree/test',
        assetImage: 'assets/images/gymmasters.png',
        appName: 'Gym masters',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=ganainy.dev.gymmasters'),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/Our_chat',
        assetImage: 'assets/images/ourchat.png',
        appName: 'Our chat',
        googlePlayLink: null),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/Reminderly',
        assetImage: 'assets/images/reminderly.png',
        appName: 'Reminderly',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=dev.ganainy.reminderly'),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/shop_app_flutter',
        assetImage: 'assets/images/shoply.png',
        appName: 'Shoply',
        googlePlayLink: null),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/FoodyApp',
        assetImage: 'assets/images/foody.png',
        appName: 'Foody',
        googlePlayLink: null),
  ];

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Application iam most proud of',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(
            height: 25,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 400),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Container(
                  width: 100,
                  height: 100,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          buttonCarouselController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                      )),
                ),
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: projects.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return Project(project: projects[itemIndex]);
                    },
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      viewportFraction: .22,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      // autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          buttonCarouselController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 40,
                      )),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class AchieveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Projects',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Application iam most proud of',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 450,
                        height: 300,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://lh3.googleusercontent.com/rSQpAc0Z3nv8cIEub9qYcAbKUvUTelb3HdPhGaToFW6Mqwgap9oqHdXdMaWwYLx44A=s180-rw',
                              width: 250,
                              height: 175,
                            ),
                            Text(
                              'Walls',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod("open", [
                                    "https://play.google.com/store/apps/details?id=com.naveenjujaray.walls"
                                  ]);
                                },
                                child: Text(
                                  'Available on Playstore',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 450,
                        height: 300,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.bloggerB,
                              size: 170,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blog',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod(
                                      "open", ["https://naveenjujaray.js.org"]);
                                },
                                child: Text(
                                  'Check it out !',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AchieveMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Projects',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Application iam most proud of',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 400,
                        height: 250,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://lh3.googleusercontent.com/rSQpAc0Z3nv8cIEub9qYcAbKUvUTelb3HdPhGaToFW6Mqwgap9oqHdXdMaWwYLx44A=s180-rw',
                              width: 200,
                              height: 125,
                            ),
                            Text(
                              'Walls',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod("open", [
                                    "https://play.google.com/store/apps/details?id=com.naveenjujaray.walls"
                                  ]);
                                },
                                child: Text(
                                  'Available on Playstore',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 400,
                        height: 250,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.bloggerB,
                              size: 120,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blog',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod(
                                      "open", ["https://naveenjujaray.js.org"]);
                                },
                                child: Text(
                                  'Check it out !',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
