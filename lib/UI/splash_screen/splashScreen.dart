// ignore_for_file: file_names

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:save_the_ball/UI/loginPage/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/splash.png",
                // height: MediaQuery.of(context).size.height,
                // fit: BoxFit.cover,
              ),
              const CircularProgressIndicator.adaptive(
                backgroundColor: Colors.white,
              )
            ],
          ),
        ),
        splashIconSize: double.infinity,
        duration: 2000,
        backgroundColor: Colors.blue.shade900,
        splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: null,
        nextScreen: const Login());
  }
}
