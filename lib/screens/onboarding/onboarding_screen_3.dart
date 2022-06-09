import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/constants/routes.dart';
import 'package:cashcrop_app/screens/onboarding/widgets/clipper1.dart';
import 'package:concentric_transition/page_view.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var step = 3;

    final controller = PageController();

    @override
    void dispose() {}
    controller.dispose();
    super.dispose();
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ConcentricPageView(
          colors: <Color>[Colors.white, Colors.blue, Colors.red],
          itemCount: 1, // null = infinity
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (int index, double value) {
            return Center(
              child: Container(
                child: Text('Page $index'),
              ),
            );
          },
        ),
        //AnimatedPageReveal(
        //children: [
        // PageViewModel(
        //   title: 'Search & Browse',
        //   description: 'Thousands of produce from all over South Africa',
        //   color: const Color(0xff195932),
        //   imageAssetPath: 'assets/images/onboarding/1.jpg',
        //   iconAssetPath: 'assets/images/onboarding/search_icon.png',
        //   titleStyle:
        //       const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //   descriptionStyle:
        //       const TextStyle(color: AppColors.darkGrey, fontSize: 20),
        // ),
        // PageViewModel(
        //   title: 'Quality',
        //   description: 'And Fresh produce from our local vendors',
        //   color: const Color(0xff19594E),
        //   imageAssetPath: 'assets/images/onboarding/2.jpg',
        //   iconAssetPath: 'assets/images/onboarding/quality.png',
        //   titleStyle:
        //       const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //   descriptionStyle:
        //       const TextStyle(color: AppColors.darkGrey, fontSize: 20),
        // ),
        // PageViewModel(
        //   title: 'Buy The Best',
        //   description: 'And buy easily with us\nGet started!',
        //   color: const Color(0xff193A59),
        //   imageAssetPath: 'assets/images/onboarding/3.jpg',
        //   iconAssetPath: 'assets/images/onboarding/buy_icon.png',
        //   titleStyle:
        //       const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //   descriptionStyle:
        //       const TextStyle(color: AppColors.darkGrey, fontSize: 20),
        // ),
        //],
      ),
    )
        //  PageView(
        //   controller: controller,
        //   children:[ Stack(
        //     children: [
        //       if (step == 1)
        //         Image.asset(
        //           'assets/images/onboarding/1.jpg',
        //           fit: BoxFit.cover,
        //           width: double.infinity,
        //           height: size.height,
        //         ),
        //       if (step == 2)
        //         Image.asset(
        //           'assets/images/onboarding/2.jpg',
        //           fit: BoxFit.cover,
        //           width: double.infinity,
        //           height: size.height,
        //         ),
        //       if (step == 3)
        //         Image.asset(
        //           'assets/images/onboarding/3.jpg',
        //           fit: BoxFit.cover,
        //           width: double.infinity,
        //           height: size.height,
        //         ),
        //       Positioned(
        //         bottom: 0,
        //         child: ClipPath(
        //           clipper: Clipper1(),
        //           child: Container(
        //             padding: const EdgeInsets.only(
        //               top: 60,
        //               right: 70,
        //             ),
        //             color: AppColors.lightGrey,
        //             height: size.height * .45,
        //             width: size.width,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 SizedBox(
        //                   width: size.width * .7,
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     children: [
        //                       const Text(
        //                         'Search & Browse',
        //                         textAlign: TextAlign.center,
        //   style: TextStyle(
        //       fontSize: 30, fontWeight: FontWeight.bold),
        // ),
        //                       const SizedBox(height: 10),
        //                       const Text(
        //                         'Thousands of produce from all over South Africa',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                             color: AppColors.darkGrey, fontSize: 20),
        //                       ),
        //                       const SizedBox(height: 30),
        //                       Stack(
        //                         children: [
        //                           Container(
        //                             height: 70,
        //                             width: 70,
        //                             decoration: const BoxDecoration(
        //                               color: AppColors.primaryGreen,
        //                               shape: BoxShape.circle,
        //                             ),
        //                           ),
        //                           Container(
        //                             height: 70,
        //                             width: 70,
        //                             decoration: const BoxDecoration(
        //                               color: AppColors.primaryGreen,
        //                               shape: BoxShape.circle,
        //                             ),
        //                             child: IconButton(
        //                               onPressed: () {
        //                                 setState(() {
        //                                   step++;
        //                                   if (step >= 4) {
        //                                     Get.toNamed(AppRoutes.homeRoute);
        //                                   }
        //                                 });
        //                               },
        //                               icon: const Icon(
        //                                 EvaIcons.arrowForwardOutline,
        //                                 color: Colors.white,
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),],
        // ),

        );
  }
}
