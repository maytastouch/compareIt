import 'package:flutter/material.dart';

import '../../appColors/colors.dart';
import '../foodPages/mainFoodPage.dart';
import 'onBoardingScreen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //solving overflow issue
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //maximize the width of the container
              width: double.infinity,
              height: 300,
              color: Colors.black,
              padding:
                  EdgeInsets.only(left: 90, right: 90, bottom: 50, top: 100),
              //add image
              child: Image.asset(
                'assets/images/black.png',
              ),
            ),

            //Welcome text
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 50),
              child: const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //small paragraph
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: const Text(
                "You're in the coolest food app right now. You're welcome to join us. Let's find you the best & healthy food.",
                //align text
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),

            //Add get started button
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            //Skip button
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => MainFoodPage())));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
