import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/screens/onboarding/widgets/clipper1.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * .1),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(60)),
          // clipper: Clipper1(),
          child: Container(
            height: size.height * .5,
            width: size.width * .8,
            decoration: const BoxDecoration(
              color: AppColors.primaryGreen,
            ),
            child: Image.asset(
              'assets/images/onboarding/1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: size.width * .7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * .05),
              const Text(
                'Search & Browse',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                'Thousands of produce from all over South Africa',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // const SizedBox(height: 30),
              // Stack(
              //   children: [
              //     Container(
              //       height: 70,
              //       width: 70,
              //       decoration: const BoxDecoration(
              //         color: AppColors.primaryGreen,
              //         shape: BoxShape.circle,
              //       ),
              //     ),
              //     Container(
              //       height: 70,
              //       width: 70,
              //       decoration: const BoxDecoration(
              //         color: AppColors.primaryGreen,
              //         shape: BoxShape.circle,
              //       ),
              //       child: IconButton(
              //         onPressed: () {
              //           Get.toNamed('page');
              //         },
              //         icon: const Icon(
              //           EvaIcons.arrowForwardOutline,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );

    //  Stack(
    //   children: [
    //     Image.asset(
    //       'assets/images/onboarding/1.jpg',
    //       fit: BoxFit.cover,
    //       width: double.infinity,
    //       height: size.height,
    //     ),
    //     Positioned(
    //       bottom: 0,
    //       child: ClipPath(
    //         clipper: Clipper1(),
    //         child: Container(
    //           padding: const EdgeInsets.only(
    //             top: 60,
    //             right: 70,
    //           ),
    //           color: AppColors.lightGrey,
    //           height: size.height * .45,
    //           width: size.width,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 width: size.width * .7,
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     const Text(
    //                       'Search & Browse',
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                           fontSize: 30, fontWeight: FontWeight.bold),
    //                     ),
    //                     const SizedBox(height: 10),
    //                     const Text(
    //                       'Thousands of produce from all over South Africa',
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                           color: AppColors.darkGrey, fontSize: 20),
    //                     ),
    //                     const SizedBox(height: 30),
    //                     Stack(
    //                       children: [
    //                         Container(
    //                           height: 70,
    //                           width: 70,
    //                           decoration: const BoxDecoration(
    //                             color: AppColors.primaryGreen,
    //                             shape: BoxShape.circle,
    //                           ),
    //                         ),
    //                         Container(
    //                           height: 70,
    //                           width: 70,
    //                           decoration: const BoxDecoration(
    //                             color: AppColors.primaryGreen,
    //                             shape: BoxShape.circle,
    //                           ),
    //                           child: IconButton(
    //                             onPressed: () {
    //                               Get.toNamed('page');
    //                             },
    //                             icon: const Icon(
    //                               EvaIcons.arrowForwardOutline,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  }
}
