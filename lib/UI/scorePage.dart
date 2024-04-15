// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:save_the_ball/UI/ScienceMode/sModePage.dart';
import 'package:save_the_ball/UI/AnimalMode/aModePage.dart';
import 'package:save_the_ball/UI/SportsMode/spModePage.dart';

import 'package:save_the_ball/gamePage/gamePage.dart';

import 'package:save_the_ball/asset/util.dart';

class ScorePage extends StatelessWidget {
  List words = [];
  List hint = [];
  String name;
  int highscore = 0;
  List<int> scoreList = [];
  String genre;
  Color AboutUsIconColor;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color ModeChanger;
  Color BackArrow;

  ScorePage(
      this.words,
      this.hint,
      this.name,
      this.scoreList,
      this.genre,
      this.AboutUsIconColor,
      this.AppBarColor,
      this.Bodybackgroundcolor,
      this.ModeChanger,
      this.BackArrow,
      {super.key});

  bool areListsEqual(List list1, List list2) {
    if (list1.length != list2.length) {
      return false;
    }

    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }

    return true;
  }

  highScore() {
    bool sciEWordEqual = areListsEqual(words, sciEWord);
    if (sciEWordEqual) {
      highscore = sciEScore[0];
    }
    bool sciIWordEqual = areListsEqual(words, sciIWord);
    if (sciIWordEqual) {
      highscore = sciIScore[0];
    }
    bool sciHWordEqual = areListsEqual(words, sciHWord);
    if (sciHWordEqual) {
      highscore = sciHScore[0];
    }
    bool aniEWordEqual = areListsEqual(words, aniEWord);
    if (aniEWordEqual) {
      highscore = aniEScore[0];
    }
    bool aniIWordEqual = areListsEqual(words, aniIWord);
    if (aniIWordEqual) {
      highscore = aniIScore[0];
    }
    bool aniHWordEqual = areListsEqual(words, aniHWord);
    if (aniHWordEqual) {
      highscore = aniHScore[0];
    }
    bool spoEWordEqual = areListsEqual(words, spoEWord);
    if (spoEWordEqual) {
      highscore = spoEScore[0];
    }

    bool spoIWordEqual = areListsEqual(words, spoIWord);
    if (spoIWordEqual) {
      highscore = spoIScore[0];
    }
    bool spoHWordEqual = areListsEqual(words, spoHWord);
    if (spoHWordEqual) {
      highscore = spoHScore[0];
    }
    print("i am from high score");
    print("$aniEScore easy");
    print("$aniIScore intermediate");
    print(aniHScore);
    // print(highscore);
  }

  void display() {
    print(words);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: AppBarColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            if (genre == "Science") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SModePage(
                          name,
                          genre,
                          scoreList,
                          AboutUsIconColor,
                          AppBarColor,
                          Bodybackgroundcolor,
                          ModeChanger,
                          BackArrow)));
            }
            if (genre == "Animal") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AModePage(
                          name,
                          genre,
                          scoreList,
                          AboutUsIconColor,
                          AppBarColor,
                          Bodybackgroundcolor,
                          ModeChanger,
                          BackArrow)));
            }
            if (genre == "Sports") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HModePage(
                          name,
                          genre,
                          scoreList,
                          AboutUsIconColor,
                          AppBarColor,
                          Bodybackgroundcolor,
                          ModeChanger,
                          BackArrow)));
            }
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: BackArrow,
        ),
        title: Text('Save The Ball',
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
                height: 60,
                width: 400,
                child: Text(
                  "High Score:$highscore ",
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: "FontMain",
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(253, 247, 1, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15),
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
                  ], // Optional background color
                ),
                child: Container(
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
                    print('genre');
                    highScore();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GamePage(
                                words,
                                hint,
                                name,
                                highScore,
                                scoreList,
                                genre,
                                AboutUsIconColor,
                                AppBarColor,
                                Bodybackgroundcolor,
                                ModeChanger,
                                BackArrow)));
                  },
                  child: const Text(
                    "Start Game",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "FontMain",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
              ),
              // ElevatedButton(onPressed: display, child: Text("click"))
              Text(
                scoreList.toString(),
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
