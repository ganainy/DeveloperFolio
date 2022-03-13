import 'package:elganainy_portfolio/include/Rows/contactpagemain.dart';
import 'package:flutter/material.dart';

class ContactCenterDesk extends StatelessWidget {
  const ContactCenterDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          ContactPageDesk(),
        ],
      ),
    );
  }
}

class ContactCenterMob extends StatelessWidget {
  const ContactCenterMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ContactPageMob();
  }
}

class ContactCenterTab extends StatelessWidget {
  const ContactCenterTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ContactPageTab();
  }
}
