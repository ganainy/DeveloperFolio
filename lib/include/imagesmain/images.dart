import 'package:flutter/material.dart';

class OneDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/one.jpg',
          ),
          fit: BoxFit.scaleDown,
        ),
        shape: BoxShape.circle,
      ),
      width: 500,
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    );
  }
}

class OneMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Image.asset('assets/images/one.jpg'));
  }
}

class OneTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 200, child: Image.asset('assets/images/one.jpg'));
  }
}

class TwoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 700,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Image.asset('assets/images/two.png'));
  }
}

class TwoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 800,
        alignment: Alignment.center,
        child: Image.asset('assets/images/two.png'));
  }
}

class TwoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 600, child: Image.asset('assets/images/two.png'));
  }
}

class ThreeDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Image.asset('assets/images/three.png'));
  }
}

class ThreeMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 800,
        alignment: Alignment.center,
        child: Image.asset('assets/images/three.png'));
  }
}

class ThreeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 600, child: Image.asset('assets/images/three.png'));
  }
}

class FourDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Image.asset('assets/images/four.png'));
  }
}

class FourMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 800,
        alignment: Alignment.center,
        child: Image.asset('assets/images/four.png'));
  }
}

class FourTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 600, child: Image.asset('assets/images/four.png'));
  }
}
