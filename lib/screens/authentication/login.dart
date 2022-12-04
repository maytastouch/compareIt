import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../appColors/colors.dart';
import '../welcome/welcome.dart';
import 'forgotPassword.dart';
import 'sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            //add image asset
            Container(
              child: Image.asset(
                'assets/images/logo-black2.png',
                height: 250,
                width: 250,
              ),
            ),

            //email textfield
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

            const SizedBox(height: 30),

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

            //gesture detector for forgot password
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ForgotPassword())));
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 123.0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: AppColors.mainGreyColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            //login button
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    border: Border.all(color: AppColors.mainColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Welcome()));
                      },
                      child: Text(
                        'login',
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

            const SizedBox(height: 170),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?  ',
                  style: TextStyle(
                    color: AppColors.mainGreyColor,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //navigate to sign up page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignIn())));
                  },
                  child: Text(
                    'Register',
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
