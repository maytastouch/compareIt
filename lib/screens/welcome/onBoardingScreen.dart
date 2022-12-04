import 'package:compareit/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../appColors/colors.dart';

import '../foodPages/mainFoodPage.dart';
import '../introScreens/introPage1.dart';
import '../introScreens/introPage2.dart';
import '../introScreens/introPage3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  //keep track if we are on the last page or not
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _isLastPage = (index == 2);
              });
            },
            children: [IntroPage1(), IntroPage2(), IntroPage3()],
          ),

          //dot indicators
          Center(
            child: Container(
                alignment: Alignment(0, 0.5),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  //onDotClicked: animateToSlide,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.mainColor,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                )),
          ),

          Row(
            //center row
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //previous elevated button

              Expanded(
                child: Container(
                  alignment: Alignment(0.4, 0.7),
                  child: ElevatedButton(
                    onPressed: () {
                      //if we are on the first page
                      if (_controller.page == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Welcome(),
                          ),
                        );
                      } else {
                        _controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      }
                    },
                    //change color of button
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: AppColors.mainColor,

                      //change width of button
                      minimumSize: Size(100, 50),
                    ),
                    child: Text('back'),
                  ),
                ),
              ),

              //next elevated button
              _isLastPage
                  ? Expanded(
                      child: Container(
                        alignment: Alignment(-0.3, 0.7),
                        child: ElevatedButton(
                          onPressed: () {
                            //navigate to main_food_page
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainFoodPage()));
                          },
                          //change color of button
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: AppColors.mainColor,
                            //change button width
                            minimumSize: Size(100, 50),
                          ),

                          child: Text('done'),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Container(
                        alignment: Alignment(-0.3, 0.7),
                        child: ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          //change color of button
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.mainColor,
                            onPrimary: Colors.black,
                            //change button width
                            minimumSize: Size(100, 50),
                          ),

                          child: Text('next'),
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
