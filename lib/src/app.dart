import 'package:cashcrop_app/constants/constants.dart';
import 'package:cashcrop_app/screens/authentication/Signup/signup_screen.dart';
import 'package:cashcrop_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/routes.dart';
import '../screens/authentication/Login/login_screen.dart';
import '../screens/authentication/loginSignup/login_signin.dart';
import '../screens/authentication/veryify email/verify_email.dart';
import '../screens/onboarding/onboarding_screen_1.dart';
import '../screens/onboarding/onboarding_screen_2.dart';
import '../screens/onboarding/onboarding_screen_3.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.

    return GetMaterialApp(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      debugShowCheckedModeBanner: false,
      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightGrey,
        textTheme: TextTheme(
          bodyText2: GoogleFonts.poppins(),
          headline2:
              GoogleFonts.cookie().copyWith(color: Colors.white, fontSize: 70),
        ),
        primaryColor: AppColors.primaryGreen,
        accentColor: AppColors.secondaryLime,
      ),
      // darkTheme: ThemeData.dark(),

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.

      home: OnboardingScreen2(),

      // home: const LoginSigninScreen(),

      getPages: [
        GetPage(
          name: AppRoutes.loginRoute,
          page: () => const LoginScreen(),
          title: 'Login',
        ),
        GetPage(
          name: AppRoutes.signupRoute,
          page: () => const SignupScreen(),
          title: 'Signup',
        ),
        GetPage(
          name: AppRoutes.verifyEmailRoute,
          page: () => const VerifyEmailScreen(),
          title: 'Verify Email',
        ),
        GetPage(
          name: AppRoutes.homeScreenRoute,
          page: () => const HomeScreen(),
          title: 'Home Page',
        ),
      ],
    );
  }
}
