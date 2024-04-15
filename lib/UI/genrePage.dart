// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:save_the_ball/UI/AnimalMode/aModePage.dart';
import 'package:save_the_ball/UI/SportsMode/spModePage.dart';
import 'package:save_the_ball/UI/ScienceMode/sModePage.dart';
import 'package:save_the_ball/UI/homePage.dart';
import 'package:save_the_ball/asset/util.dart';

// ignore: must_be_immutable
class GenrePage extends StatelessWidget {
  String name;
  List<int> scoreList = [];

  Color AboutUsIconColor;
  Color ModeChanger;
  Color Bodybackgroundcolor;
  Color AppBarColor;
  Color BackArrow;
  GenrePage(this.name, this.scoreList, this.AboutUsIconColor, this.AppBarColor,
      this.Bodybackgroundcolor, this.ModeChanger, this.BackArrow,
      {super.key});

  Display() {
    print(aniEScore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bodybackgroundcolor,
      appBar: AppBar(
        flexibleSpace: Container(
          color: AppBarColor,

          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/background.jpg'),
          //     fit: BoxFit.cover, // Adjust fitting as needed
          //   ),
          // ),
        ),
        // backgroundColor: Colors.transparent,
        title: Text(
          "Save The Ball",
          style: fontStyle(
            35,
            const Color(0xFFFDDB01),
            FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.account_circle_rounded,
            size: 35,
            color: Colors.green,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(name, AboutUsIconColor,
                        AppBarColor, Bodybackgroundcolor, ModeChanger)));
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: BackArrow,
        ),

        // actions: [
        //   Row(children: [
        //     Container(
        //       height: 70,
        //       decoration: const BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.yellow,
        //       ),
        //       child: Center(
        //           child: Text(
        //         name,
        //       )),
        //     ),
        //   ]),
        // ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       // Specify your desired gradient colors here
        //       Colors.black,
        //       // Colors.green.shade600,
        //       Colors.deepPurple.shade600, // Deep sky blue
        //       // Colors.blue.shade900, // Light blue
        //       Colors.black,
        //     ],
        //     begin: Alignment.topLeft, // Gradient starting position (optional)
        //     end: Alignment.bottomRight, // Gradient ending position (optional)
        //   ),
        // ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main.jpg"), fit: BoxFit.cover),
        ),
        // child: Center(
        // child: Container(
        child: Container(
          color: Bodybackgroundcolor,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Welcome $name!!!",
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "FontMain",
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 47, 235, 22),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: 400,
                child: const Text(
                  "Select The Genre",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "FontMain",
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(253, 247, 1, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Set the radius
                  // color: Colors.pink.shade400, // Optional background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: const Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SModePage(
                                name,
                                "Science",
                                scoreList,
                                AboutUsIconColor,
                                AppBarColor,
                                Bodybackgroundcolor,
                                ModeChanger,
                                BackArrow)));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink.shade400),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Colors.white24, // Your desired border color
                        width: 1.0, // Your desired border width
                      ),
                    ), // Set your desired color
                  ),
                  child: Container(
                    child: const Text(
                      "Science",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "FontMain",
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Set the radius
                  // color: const Color.fromRGBO(
                  //     209, 127, 61, 0.9), // Optional background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: const Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AModePage(
                                name,
                                "Animal",
                                scoreList,
                                AboutUsIconColor,
                                AppBarColor,
                                Bodybackgroundcolor,
                                ModeChanger,
                                BackArrow)));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade700),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Colors.white24, // Your desired border color
                        width: 1.0, // Your desired border width
                      ),
                    ), // Set your desired color
                  ),
                  child: Container(
                    child: const Text(
                      "Animal",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "FontMain",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Set the radius
                  // color: const Color.fromRGBO(
                  //     209, 127, 61, 0.9), // Optional background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: const Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HModePage(
                                name,
                                "Sports",
                                scoreList,
                                AboutUsIconColor,
                                AppBarColor,
                                Bodybackgroundcolor,
                                ModeChanger,
                                BackArrow)));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.orange.shade400,
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Colors.white24, // Your desired border color
                        width: 1.0, // Your desired border width
                      ),
                    ), // Set your desired color
                  ),
                  child: Container(
                    child: const Text(
                      "Sports",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "FontMain",
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // ElevatedButton(onPressed: sort1(), child: Text("Show Score List")),
              // ElevatedButton(onPressed: Display, child: Text("show score")),
              // Container(
              //   height: 50,
              //   width: 350,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20.0), // Set the radius
              //     color: Color.fromRGBO(
              //         209, 127, 61, 0.9), // Optional background color
              //   ),
              //   child: Text(
              //     "Geography",
              //     style: TextStyle(
              //       fontSize: 30,
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Navigate to the second page
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => SecondPage()),
      //       );
      //     },
      //     child: Text('Go to Second Page'),
      //   ),
      // ),
    );
  }
}
