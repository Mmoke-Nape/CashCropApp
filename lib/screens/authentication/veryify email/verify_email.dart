import 'dart:ui';

import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/constants/routes.dart';
import 'package:cashcrop_app/screens/authentication/validation/validation.dart';
import 'package:cashcrop_app/screens/authentication/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../validation/OTP Form/otp_form.dart';
import '../widgets/top_clipper.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              color: Theme.of(context).accentColor,
            ),
            ClipPath(
              clipper: TopClipper(),
              child: Container(
                width: size.width,
                height: size.height * .35,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              // padding: const EdgeInsets.symmetric(vertical: 50),
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      width: size.width,
                      // height: size.height * .13,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColors.primaryGreen,
                              ),
                            ),
                          ),
                          const Text(
                            'Verify Email',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              // fontWeight: FontWeight.w100,
                            ),
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: size.width * .9,
                      height: size.height * .78,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * .2,
                            child: const RiveAnimation.asset(
                              'assets/animations/lock_phone.riv',
                              fit: BoxFit.contain,
                              // animations: ['hover'],
                              // placeHolder: Container(color: Colors.amber),
                            ),
                          ),
                          const Text(
                            'Email Verification',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Check your Email. We have sent a code to n****e@gmail.com',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          const OtpForm(),
                          const SizedBox(height: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 40),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: AppColors.darkGrey,
                                ),
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 59.0, end: 0.0),
                                  duration: const Duration(seconds: 59),
                                  builder: (context, value, child) => Text(
                                    '00:${value.toInt()}',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          SignupButton(
                            text: 'Verify',
                            press: () {
                              Get.toNamed(AppRoutes.homeScreenRoute);
                            },
                          ),
                        ],
                      ),
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
