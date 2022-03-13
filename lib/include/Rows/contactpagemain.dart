import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPageDesk extends StatelessWidget {
  const ContactPageDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact me",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '• Iam open to new remote job opportunities worldwide ',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    Image.asset(
                      'assets/images/world.png',
                      fit: BoxFit.contain,
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'or located in Germany ',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    Image.asset(
                      'assets/images/german.png',
                      fit: BoxFit.contain,
                      width: 40,
                      height: 40,
                    ),
                    Text(
                      ' as well as freelancing projects',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.phone),
              SizedBox(
                width: 10,
              ),
              Text(
                '+49 176 411 392 55',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.email),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [
                    'https://mail.google.com/mail/?view=cm&fs=1&to=amrmohammedali11@gmail.com&su=Hi Amr'
                  ]);
                },
                child: Text(
                  'amrmohammedali11@gmail.com',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                width: 10,
              ),
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
        ],
      ),
    );
  }
}

/*class ContactPageTab extends StatelessWidget {
  const ContactPageTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '☎️',
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+91 ***** *****',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '✉️',
                  style: TextStyle(color: Colors.grey, fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'j***********n@gmail.com',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod("open",
                              ["https://www.facebook.com/naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://twitter.com/naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
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
                              ["https://www.linkedin.com/in/naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bloggerB,
                          color: Colors.red,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://naveenjujaray.js.org"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
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
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.gitlab,
                          color: Colors.orange,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://www.gitlab.com/naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.medium,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://medium.com/@naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.dev,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://dev.to/naveenjujaray"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.reddit,
                          color: Colors.deepOrangeAccent,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod("open",
                              ["https://www.reddit.com/user/jujaraynaveen"]);
                        },
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
class ContactPageTab extends StatelessWidget {
  const ContactPageTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Contact me",
          style:
              TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 40),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            children: [
              Wrap(
                children: [
                  Text(
                    '• Iam open to new remote job opportunities worldwide ',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/world.png',
                    fit: BoxFit.contain,
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    'or located in Germany ',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/german.png',
                    fit: BoxFit.contain,
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    ' as well as freelancing projects',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone),
            SizedBox(
              width: 10,
            ),
            Text(
              '+49 176 411 392 55',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open", [
                  'https://mail.google.com/mail/?view=cm&fs=1&to=amrmohammedali11@gmail.com&su=Hi Amr'
                ]);
              },
              child: Text(
                'amrmohammedali11@gmail.com',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.linkedin),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context.callMethod(
                    "open", ['https://www.linkedin.com/in/amr-elganainy/']);
              },
              child: Text(
                'linkedin.com/amr-elganainy/',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.github),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context
                    .callMethod("open", ['https://www.github.com/ganainy']);
              },
              child: Text(
                'github.com/ganainy',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ContactPageMob extends StatelessWidget {
  const ContactPageMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Contact me",
          style:
              TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 40),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            children: [
              Wrap(
                children: [
                  Text(
                    '• Iam open to new remote job opportunities worldwide ',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/world.png',
                    fit: BoxFit.contain,
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    'or located in Germany ',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/german.png',
                    fit: BoxFit.contain,
                    width: 20,
                    height: 20,
                  ),
                  Text(
                    ' as well as freelancing projects',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone),
            SizedBox(
              width: 10,
            ),
            Text(
              '+49 176 411 392 55',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open", [
                  'https://mail.google.com/mail/?view=cm&fs=1&to=amrmohammedali11@gmail.com&su=Hi Amr'
                ]);
              },
              child: Text(
                'amrmohammedali11@gmail.com',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.linkedin),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context.callMethod(
                    "open", ['https://www.linkedin.com/in/amr-elganainy/']);
              },
              child: Text(
                'linkedin.com/amr-elganainy/',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.github),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                js.context
                    .callMethod("open", ['https://www.github.com/ganainy']);
              },
              child: Text(
                'github.com/ganainy',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/*
class ContactPageMob extends StatelessWidget {
  const ContactPageMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '☎️',
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+91 ***** *****',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    '✉️',
                    style: TextStyle(color: Colors.grey, fontSize: 22),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      'j***********n@gmail.com',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.facebook.com/naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://twitter.com/naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.bloggerB,
                        color: Colors.red,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://naveenjujaray.js.org"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.gitlab,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.gitlab.com/naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.medium,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://medium.com/@naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.dev,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://dev.to/naveenjujaray"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.reddit,
                        color: Colors.deepOrangeAccent,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.reddit.com/user/jujaraynaveen"]);
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
