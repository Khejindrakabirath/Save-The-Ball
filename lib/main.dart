import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:save_the_ball/test.dart';

import 'BgChabge.dart';
import 'UI/splash_screen/splashScreen.dart';
// import 'test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return
        // Test();
        // Test();

        const SplashScreen();
  }
}
