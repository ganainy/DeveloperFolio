import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared.dart';

Widget DeskProject({
  @required ProjectModel project,
}) {
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
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [project.githubLink]);
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                project.googlePlayLink == null
                    ? SizedBox()
                    : InkWell(
                        onTap: () {
                          js.context
                              .callMethod("open", [project.googlePlayLink]);
                        },
                        child: Icon(
                          FontAwesomeIcons.googlePlay,
                          size: 30,
                        ),
                      ),
                SizedBox(
                  width: 16,
                ),
                project.videoLink == null
                    ? SizedBox()
                    : InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.videoLink]);
                        },
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          size: 30,
                        )),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        width: 25,
      ),
    ],
  );
}

Widget MobProject({
  @required ProjectModel project,
}) {
  return Container(
    width: 250,
    margin: new EdgeInsets.all(10),
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
        SizedBox(
          height: 40,
        ),
        Image.asset(
          project.assetImage,
          fit: BoxFit.contain,
          width: 150,
          height: 100,
        ),
        Text(
          project.appName,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod("open", [project.githubLink]);
              },
              child: Icon(
                FontAwesomeIcons.github,
                size: 30,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            project.googlePlayLink == null
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.googlePlayLink]);
                    },
                    child: Icon(
                      FontAwesomeIcons.googlePlay,
                      size: 30,
                    ),
                  ),
            SizedBox(
              width: 16,
            ),
            project.videoLink == null
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.videoLink]);
                    },
                    child: Icon(
                      FontAwesomeIcons.youtube,
                      size: 30,
                    )),
          ],
        )
      ],
    ),
  );
}

Widget TabProject({
  @required ProjectModel project,
}) {
  return Container(
    width: 250,
    margin: new EdgeInsets.all(10),
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
        SizedBox(
          height: 40,
        ),
        Image.asset(
          project.assetImage,
          fit: BoxFit.contain,
          width: 150,
          height: 100,
        ),
        Text(
          project.appName,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod("open", [project.githubLink]);
              },
              child: Icon(
                FontAwesomeIcons.github,
                size: 30,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            project.googlePlayLink == null
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.googlePlayLink]);
                    },
                    child: Icon(
                      FontAwesomeIcons.googlePlay,
                      size: 30,
                    ),
                  ),
            SizedBox(
              width: 16,
            ),
            project.videoLink == null
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.videoLink]);
                    },
                    child: Icon(
                      FontAwesomeIcons.youtube,
                      size: 30,
                    )),
          ],
        )
      ],
    ),
  );
}

class ProjectModel {
  String appName;
  String assetImage;
  String googlePlayLink;
  String githubLink;
  String videoLink;

  ProjectModel({
    @required String this.appName,
    @required String this.assetImage,
    String this.googlePlayLink,
    String this.videoLink,
    @required String this.githubLink,
  });
}

class AchieveDesk extends StatefulWidget {
  @override
  State<AchieveDesk> createState() => _AchieveDeskState();
}

class _AchieveDeskState extends State<AchieveDesk> {
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
                    itemCount: Shared.projects.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return DeskProject(project: Shared.projects[itemIndex]);
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

/*class AchieveTab extends StatelessWidget {
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
}*/

class AchieveTab extends StatefulWidget {
  @override
  State<AchieveTab> createState() => _AchieveTabState();
}

class _AchieveTabState extends State<AchieveTab> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Application iam most proud of',
          style: TextStyle(color: Colors.grey, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400),
          child: Stack(children: [
            Expanded(
              child: CarouselSlider.builder(
                itemCount: Shared.projects.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return TabProject(project: Shared.projects[itemIndex]);
                },
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  aspectRatio: 1 / .4,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
            ),
            Positioned(
              child: Container(
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
              left: 20,
              top: 100,
            ),
            Positioned(
              child: Container(
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
              ),
              right: 20,
              top: 100,
            )
          ]),
        ),
        /* Row(children: [



        ]),*/
      ],
    );
  }
}

class AchieveMob extends StatefulWidget {
  @override
  State<AchieveMob> createState() => _AchieveMobState();
}

class _AchieveMobState extends State<AchieveMob> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Projects',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Application iam most proud of',
          style: TextStyle(color: Colors.grey, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400),
          child: Stack(children: [
            Expanded(
              child: CarouselSlider.builder(
                itemCount: Shared.projects.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return MobProject(project: Shared.projects[itemIndex]);
                },
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  aspectRatio: 1 / .6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
            ),
            Positioned(
              child: Container(
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
              left: 20,
              top: 100,
            ),
            Positioned(
              child: Container(
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
              ),
              right: 20,
              top: 100,
            )
          ]),
        ),
        /* Row(children: [



        ]),*/
      ],
    );
  }
}

/*class AchieveMob extends StatelessWidget {
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
}*/
