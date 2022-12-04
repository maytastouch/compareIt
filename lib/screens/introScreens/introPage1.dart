import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //add image
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Image.asset(
              'assets/images/boarding1.png',
              width: 200,
              height: 200,
            ),
          ),

          //welcome text
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 30),
            child: const Text(
              "Find the best prices To make your day.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //paragraph text
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: const Text(
              "You're in the coolest food app right now. You're welcome to join us. Let's find you the best & healthy food.",
              //align text
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ],
      ),
    ));
  }
}
