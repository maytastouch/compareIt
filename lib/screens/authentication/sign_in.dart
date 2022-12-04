import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../appColors/colors.dart';
import '../welcome/welcome.dart';
import 'login.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
//sup
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //create boolean _isObscure to hide password
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //solving overflow issue
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          //add auto height
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image asset
            Container(
              child: Image.asset(
                'assets/images/logo-black2.png',
                height: 250,
                width: 250,
              ),
            ),

            //username text field
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.mainGreyColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.mainGreyColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.mainGreyColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone number',
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.mainGreyColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.mainGreyColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            //create orange button
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.mainColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: AppColors.mainBlackColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Text asking if user has an account
            const SizedBox(height: 100),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    color: AppColors.mainGreyColor,
                    fontSize: 15,
                  ),
                ),
                //add gesture detector for sign in
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
