import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogCardDesk extends StatelessWidget {
  List<CoursModel> courses = [
    CoursModel(
        'Android java bootcamp - New Horizons Academy',
        'Java oop, android development course in New Horizons Academy (Mansoura branch)',
        'https://www.newhorizons.com/home'),
    CoursModel(' The Complete 2022 Flutter & Dart Development Course [Arabic]',
        'Udemy course', 'https://www.udemy.com/course/complete-flutter-arabic'),
    CoursModel('Android nanodegree courses', 'from Udacity by google', null),
    CoursModel('Android fundamentals course ', 'from Udacity by google', null),
    CoursModel('Advanced Android App Development course',
        'from Udacity by google', null),
    CoursModel(
        'Kotlin bootcamp for programmers', 'from Udacity by google', null),
    CoursModel(
        'Kotlin for java developers', 'from Coursera by jetbrains', null),
    CoursModel(
        'Developing Android Apps with Kotlin ', 'from Udacity by google', null),
    CoursModel(
        'ISTQB foundation level from certification 2018', 'from Udemy', null),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Courses',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 500.0,
            child: GridView.count(
              childAspectRatio: 2.9,
              crossAxisCount: 4,
              children: List.generate(courses.length, (index) {
                return Course(course: courses[index]);
              }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Widget Course({@required CoursModel course}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        if (course.courseLink != null)
          js.context.callMethod("open", [course.courseLink]);
      },
      child: Container(
        padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.courseName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            course.courseDesc != null
                ? Text(course.courseDesc,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ))
                : SizedBox(),
          ],
        ),
      ),
    ),
  );
}

class CoursModel {
  @required
  String courseName;
  String courseDesc;
  String courseLink;

  CoursModel(this.courseName, this.courseDesc, this.courseLink);
}

class BlogCardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Courses',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'WITH LOVE FOR DEVELOPING COOL STUFF, I LOVE TO WRITE AND TEACH OTHERS WHAT I HAVE LEARNT.',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://medium.com/@naveenjujaray/walls-ad-free-wallpapers-a-flutter-app-beae03309dc9"
                        ]);
                      },
                      child: Container(
                        width: 580.0,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Walls — Ad Free Wallpapers a Flutter App',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "I’m a noob to Android Development but Flutter made Android Development simple in a way that i had completed this app with no skills in span of 14 Days, if you’re interested in Flutter then you should check what i made.",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://naveenjujaray.js.org/buildblogusingjekyll"
                        ]);
                      },
                      child: Container(
                        width: 580,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Build A Blog Using Jekyll And Deploy To Github Pages And Set Custom Domain',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "I recently decided to start a blog. I had used Wordpress in the past, so I knew I could get my blog up and running quickly using Wordpress. I was also slightly familiar with Jekyll.",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://naveenjujaray.js.org/flutter-web-install"
                        ]);
                      },
                      child: Container(
                        width: 580.0,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is Flutter Web?',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "In addition to mobile apps, Flutter supports the generation of web content rendered using standards-based web technologies: HTML, CSS and JavaScript.",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCardMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Courses',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'WITH LOVE FOR DEVELOPING COOL STUFF, I LOVE TO WRITE AND TEACH OTHERS WHAT I HAVE LEARNT.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://medium.com/@naveenjujaray/walls-ad-free-wallpapers-a-flutter-app-beae03309dc9"
                        ]);
                      },
                      child: Container(
                        width: 400.0,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(
                              'Walls — Ad Free Wallpapers a Flutter App',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Text(
                                  "I’m a noob to Android Development but Flutter made Android Development simple in a way that i had completed this app with no skills in span of 14 Days, if you’re interested in Flutter then you should check what i made.",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://naveenjujaray.js.org/buildblogusingjekyll"
                        ]);
                      },
                      child: Container(
                        width: 400,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(
                              'Build A Blog Using Jekyll And Deploy To Github Pages And Set Custom Domain',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Text(
                                  "I recently decided to start a blog. I had used Wordpress in the past, so I knew I could get my blog up and running quickly using Wordpress. I was also slightly familiar with Jekyll.",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          "https://naveenjujaray.js.org/flutter-web-install"
                        ]);
                      },
                      child: Container(
                        width: 400.0,
                        height: 200.0,
                        padding:
                            new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20.0,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is Flutter Web?',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "In addition to mobile apps, Flutter supports the generation of web content rendered using standards-based web technologies: HTML, CSS and JavaScript.",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
