import 'package:flutter/material.dart';
import 'package:wallet_sha/UI/pages/on_boarding.dart';
import 'package:wallet_sha/UI/pages/set_profile.dart';
import 'package:wallet_sha/UI/pages/sign_in.dart';
import 'package:wallet_sha/UI/pages/sign_up.dart';
import 'package:wallet_sha/UI/pages/splash_screen.dart';
import 'package:wallet_sha/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
      ),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/onBoarding': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/set-profile': (context) => const SignSetProfile(), 
        })
        ;
  }
}
