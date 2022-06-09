import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/constants/routes.dart';
import 'package:cashcrop_app/screens/authentication/validation/validation.dart';
import 'package:cashcrop_app/screens/authentication/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/top_clipper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                height: size.height * .6,
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
                          Image.asset(
                            'assets/images/logo/logo.png',
                            height: 80,
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                    Text(
                      'CashCrop',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 50),
                    ),
                    SizedBox(height: size.height * .02),
                    RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome ',
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40),
                          ),
                          TextSpan(
                            text: 'Back',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * .03),
                    const Text(
                      'Login to continue',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    SizedBox(height: size.height * .03),
                    LoginSignupForm()
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
