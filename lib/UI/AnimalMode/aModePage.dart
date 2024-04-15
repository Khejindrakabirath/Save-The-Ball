// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../asset/util.dart';
import '../genrePage.dart';
import '../scorePage.dart';

// ignore: must_be_immutable
class AModePage extends StatelessWidget {
  String name;
  String genre;
  List<int> scoreList = [];
  Color AboutUsIconColor;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color ModeChanger;
  Color BackArrow;
  AModePage(
      this.name,
      this.genre,
      this.scoreList,
      this.AboutUsIconColor,
      this.AppBarColor,
      this.Bodybackgroundcolor,
      this.ModeChanger,
      this.BackArrow,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GenrePage(
                          name,
                          scoreList,
                          AboutUsIconColor,
                          AppBarColor,
                          Bodybackgroundcolor,
                          ModeChanger,
                          BackArrow)));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: BackArrow,
            )),
        flexibleSpace: Container(
          color: AppBarColor,

          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/background.jpg'),
          //     fit: BoxFit.cover, // Adjust fitting as needed
          //   ),
          // ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(genre,
            style: fontStyle(
              35,
              Color(0xFFFDDB01),
              FontWeight.bold,
            )), // Ensure title color contrasts with background
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
              image: AssetImage("assets/images/animal.png"), fit: BoxFit.cover),
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
                height: 60,
                width: 400,
                child: const Text(
                  "Choose Game Mode",
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
              // Text(
              //   genre,
              //   style: const TextStyle(
              //     fontSize: 15,
              //     fontFamily: "FontMain",
              //     fontWeight: FontWeight.bold,
              //     decoration: TextDecoration.underline,
              //     color: Color.fromRGBO(253, 247, 1, 1),
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Set the radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ],
                ),
                child: ElevatedButton(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScorePage(
                                  aniEWord,
                                  aniEHint,
                                  name,
                                  scoreList,
                                  genre,
                                  AboutUsIconColor,
                                  AppBarColor,
                                  Bodybackgroundcolor,
                                  ModeChanger,
                                  BackArrow,
                                )));
                  },
                  child: const Text(
                    "Easy Mode",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "FontMain",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Set the radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ],
                ),
                child: ElevatedButton(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScorePage(
                                aniIWord,
                                aniIHint,
                                name,
                                scoreList,
                                genre,
                                AboutUsIconColor,
                                AppBarColor,
                                Bodybackgroundcolor,
                                ModeChanger,
                                BackArrow)));
                  },
                  child: const Text(
                    "Intermediate Mode",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "FontMain",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87
                          .withOpacity(0.4), // Adjust color and opacity
                      blurRadius: 8, // Increase for stronger blur
                      spreadRadius: 3, // Adjust for border width appearance
                      offset: Offset(
                          0, 3), // Offset for positioning below the button
                    ),
                  ], // Set the radius
                ),
                child: Container(
                  child: ElevatedButton(
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScorePage(
                                  aniHWord,
                                  aniHHint,
                                  name,
                                  scoreList,
                                  genre,
                                  AboutUsIconColor,
                                  AppBarColor,
                                  Bodybackgroundcolor,
                                  ModeChanger,
                                  BackArrow)));
                    },
                    child: const Text(
                      "Hard Mode",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "FontMain",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
