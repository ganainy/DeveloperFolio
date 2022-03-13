import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared.dart';

class BlogCardDesk extends StatelessWidget {
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
              children: List.generate(Shared.courses.length, (index) {
                return DeskCourse(course: Shared.courses[index]);
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

Widget DeskCourse({@required CoursModel course}) {
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

Widget MobCourse({@required CoursModel course}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          course.courseName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        course.courseDesc != null
            ? Text(course.courseDesc,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                  ),
                ))
            : SizedBox(),
      ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Courses',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 700.0,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MobCourse(course: Shared.courses[index]);
                },
                separatorBuilder: (context, index) => Divider(
                      color: Colors.grey[300],
                    ),
                itemCount: Shared.courses.length)),
      ],
    );
  }
}
