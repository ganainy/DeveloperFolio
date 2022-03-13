import 'include/Rows/achievementsmain.dart';
import 'include/Rows/blogcardmain.dart';

class Shared {
  static List<ProjectModel> projects = [
    ProjectModel(
        githubLink: 'https://github.com/ganainy/GymMasters/tree/test',
        assetImage: 'assets/images/gymmasters.png',
        appName: 'Gym masters',
        videoLink: 'https://www.youtube.com/watch?v=JitaH3K0fcM',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=ganainy.dev.gymmasters'),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/Our_chat',
        assetImage: 'assets/images/ourchat.png',
        appName: 'Our chat',
        videoLink: 'https://www.youtube.com/watch?v=X9PzUzBMOl8',
        googlePlayLink: null),
    ProjectModel(
        githubLink: 'https://github.com/ganainy/Reminderly',
        assetImage: 'assets/images/reminderly.png',
        videoLink: 'https://www.youtube.com/watch?v=Dl6z5eDK3LE',
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
        videoLink: 'https://www.youtube.com/watch?v=JiFod9aZel0',
        appName: 'Foody',
        googlePlayLink: null),
  ];

  static List<CoursModel> courses = [
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
}
