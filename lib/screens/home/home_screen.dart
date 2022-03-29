import 'package:cashcrop_app/constants/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: size.height * .12,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(EvaIcons.menu),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/logo/logo.png'),
                            Text(
                              'CashCrop',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ),
                      const Icon(EvaIcons.shoppingBagOutline),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
