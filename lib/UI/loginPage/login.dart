// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:save_the_ball/UI/homePage.dart';
import 'package:save_the_ball/asset/send_data.dart';
import 'package:save_the_ball/asset/util.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  final TextEditingController _nameController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     vsync: this,
  //   );
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  onClick() {
    if (_nameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          alignment: const Alignment(0,
              0.2), //first for left right movement , second for top down movement
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.green, width: 4),
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 40.0,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 5  horizontally
                    5.0, // Move to bottom 5 Vertically
                  ),
                ),
              ],
            ),
            child: Center(
              child: Text(
                " Please enter your name",
                style: fontStyle(25, Colors.black, FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    } else {
      String name = _nameController.text.toString();
      CreateDatabase(name);
      UpdateName(_nameController.text.toString());
      UpdateName(_nameController.text.toString());
      CreateDatabase(name);
      UpdateName(name);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(name, Colors.white, Colors.deepPurple,
              Colors.transparent.withOpacity(0.2), Colors.black),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome to",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "FontMain",
                fontSize: 35,
                color: Colors.green),
          ),
          Image.asset(
            "assets/images/splash.png",
            height: MediaQuery.of(context).size.height / 4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: TextField(
              cursorColor: Colors.green.shade700,
              controller: _nameController,
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.account_circle_rounded,
                  size: 35,
                ),
                suffixIconColor: Colors.green,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
                hintText: "Enter full your name:",
                hintStyle: TextStyle(fontSize: 15, color: Colors.white),
              ),
              style: const TextStyle(
                  fontFamily: "FontMain", fontSize: 23, color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * .7,
            child: ElevatedButton(
              onPressed: () {
                onClick();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "FontMain",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
