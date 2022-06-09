import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/screens/onboarding/onboarding_screen_1.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageData {
  final String? title;
  final String? iamge;
  final Color bgColor;
  final CustomClipper<Path>? clipper;
  PageData({
    this.iamge,
    this.clipper,
    this.title,
    this.bgColor = Colors.white,
  });
}

class OnboardingScreen2 extends StatelessWidget {
  final List<PageData> pages = [
    PageData(
      title: "Choose your\ninterests",
      bgColor: AppColors.primaryGreen,
    ),
    PageData(
      title: "Drag and\ndrop to move",
      bgColor: AppColors.yellow,
    ),
    PageData(
      title: "Local news\nstories",
      bgColor: AppColors.secondaryLime,
    ),
  ];

  List<Color> get colors => pages.map((p) => p.bgColor).toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ConcentricPageView(
          colors: colors,
          opacityFactor: 1.0,
          scaleFactor: 0.8,
          verticalPosition: 0.85,
          radius: 33,
          curve: Curves.ease,
          duration: const Duration(seconds: 2),
//          verticalPosition: 0.7,
//          direction: Axis.vertical,
          itemCount: 3,
//          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (index, value) {
            // For example scale or transform some widget by [value] param
            //            double scale = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);
            return OnboardingScreen1();
          },
        ),
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  final PageData page;

  const PageCard({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // _buildPicture(context),
          // const SizedBox(height: 30),
          // _buildText(context),
        ],
      ),
    );
  }
}
