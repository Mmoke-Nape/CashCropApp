import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/screens/authentication/validation/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/top_clipper.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 20),
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // padding: const EdgeInsets.only(left: 20),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            height: 70,
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'CashCrop',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 50),
                    ),
                    const Text(
                      'Create a new account',
                      style: TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 20),
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
