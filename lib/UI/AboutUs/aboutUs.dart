// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:save_the_ball/UI/homePage.dart';
import 'package:save_the_ball/asset/util.dart';

// ignore: must_be_immutable
class AboutUs extends StatefulWidget {
  String name;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color AboutUsIconColor;
  Color ModeChanger;
  AboutUs(this.name, this.AboutUsIconColor, this.AppBarColor,
      this.Bodybackgroundcolor, this.ModeChanger,
      {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<AboutUs> createState() => _AboutUsState(
      name, AboutUsIconColor, AppBarColor, Bodybackgroundcolor, ModeChanger);
}

class _AboutUsState extends State<AboutUs> {
  String name;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color AboutUsIconColor;
  Color ModeChanger;
  _AboutUsState(this.name, this.AboutUsIconColor, this.AppBarColor,
      this.Bodybackgroundcolor, this.ModeChanger);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            color: AppBarColor,
          ),
          title: Text("About Us",
              style: fontStyle(
                35,
                Color(0xFFFDDB01),
                FontWeight.bold,
              )),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(name, AboutUsIconColor,
                            AppBarColor, Bodybackgroundcolor, ModeChanger)));
              },
              icon: Icon(
                Icons.adaptive.arrow_back,
                color: Colors.yellow,
              ))),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              image: AssetImage('assets/images/main.jpg'), fit: BoxFit.cover),
        ),
        child: Container(
          color: Bodybackgroundcolor,
          child: Center(
            child: Container(
                height: 200,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink,
                        blurRadius: 20,
                        spreadRadius: 5,
                        blurStyle: BlurStyle.outer)
                  ],
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.red,
                    ),
                    top: BorderSide(
                      color: Colors.red,
                    ),
                    left: BorderSide(
                      color: Colors.red,
                    ),
                    right: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Khejindra Kabirath',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Abhinash Chaudhary',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Brahamdev Rajak',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
