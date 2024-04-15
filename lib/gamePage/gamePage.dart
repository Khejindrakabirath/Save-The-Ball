// ignore_for_file: file_names, non_constant_identifier_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:save_the_ball/UI/scorePage.dart';
import '../asset/util.dart';
import 'dart:math';
import '../UI/genrePage.dart';
import 'package:save_the_ball/asset/send_data.dart';

// ignore: must_be_immutable
class GamePage extends StatefulWidget {
  List words = [];
  List hint = [];
  String name;
  final Function() abc;
  List<int> scoreList;
  String genre;
  Color AboutUsIconColor;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color ModeChanger;
  Color BackArrow;
  GamePage(
      this.words,
      this.hint,
      this.name,
      this.abc,
      this.scoreList,
      this.genre,
      this.AboutUsIconColor,
      this.AppBarColor,
      this.Bodybackgroundcolor,
      this.ModeChanger,
      this.BackArrow,
      {super.key});
  // void displays() {
  //   print(Words);
  // }

  @override
  State<GamePage> createState() =>
      // ignore: no_logic_in_create_state
      _GamePageState(words, hint, name, abc, scoreList, genre, AboutUsIconColor,
          AppBarColor, Bodybackgroundcolor, ModeChanger, BackArrow);
}

class _GamePageState extends State<GamePage> {
  int i = 1;
  //...........................for audio....................................//
  bool soundStatus = true;
  final audioPlayer = AudioPlayer();
  void playSound(String audio) async {
    try {
      if (soundStatus) {
        await audioPlayer.play(AssetSource(audio));
      }
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  List<int> scoreList = [];
  List words = [];
  List hint;
  String name;
  String genre;
  Function() abc;
  Color AboutUsIconColor;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color ModeChanger;
  Color BackArrow;

  _GamePageState(
    this.words,
    this.hint,
    this.name,
    this.abc,
    this.scoreList,
    this.genre,
    this.AboutUsIconColor,
    this.AppBarColor,
    this.Bodybackgroundcolor,
    this.ModeChanger,
    this.BackArrow,
  );
  late int index;
  late String word;
  late String hintWord;
  @override
  void initState() {
    super.initState();
    index = Random().nextInt(words.length);
    word = words[index];
    hintWord = hint[index];
  }

//..................... life and points are  here....................
  List guessedCharacters = [];
  int points = 0;
  int life = 0; //status
  int level = 1;
  int hintCount = 4;

  checkalphabet(String alphabet) {
    if (word.contains(alphabet)) {
      setState(() {
        guessedCharacters.add(alphabet);
      });
      //.......................music invoke................................
      playSound('sounds/Correct.mp3');
    } else if (life != 5) {
      setState(() {
        life += 1;
      });
      playSound('sounds/Wrong.mp3');
    } else {
      life += 1;
      openLossDialog("You Lost !!!");
      playSound('sounds/Lose.mp3');
    }

    bool isWon = true;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!guessedCharacters.contains(char)) {
        setState(() {
          isWon = false;
        });
        break;
      }
    }
    if (isWon) {
      points += 5;
      openWinDialog("Hurray, You Won!!");
      playSound('sounds/Win.mp3');
    }
  }

  //.................list Comparision...................
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

  listChecking() {
    bool sciEWordEqual = areListsEqual(words, sciEWord);
    if (sciEWordEqual == true) {
      sciEScore.add(5);
      print("i am inside update");
    }

    // sort1();
    bool sciIWordEqual = areListsEqual(words, sciIWord);
    if (sciIWordEqual) {
      sciIScore.add(points);
    }
    bool sciHWordEqual = areListsEqual(words, sciHWord);
    if (sciHWordEqual) {
      sciHScore.add(points);
    }

    bool aniEWordEqual = areListsEqual(words, aniEWord);
    if (aniEWordEqual) {
      print("i am running");
      aniEScore.add(points);
    }
    bool aniIWordEqual = areListsEqual(words, aniIWord);
    if (aniIWordEqual) {
      aniIScore.add(points);
    }
    bool aniHWordEqual = areListsEqual(words, aniHWord);
    if (aniHWordEqual) {
      aniHScore.add(points);
    }

    bool spoEWordEqual = areListsEqual(words, spoEWord);
    if (spoEWordEqual) {
      spoEScore.add(points);
    }

    bool spoIWordEqual = areListsEqual(words, spoIWord);
    if (spoIWordEqual) {
      spoIScore.add(points);
    }
    bool spoHWordEqual = areListsEqual(words, spoHWord);
    if (spoHWordEqual) {
      spoHScore.add(points);
    }
  }

  ScoreAdding() {
    bool aniIWordEqual = areListsEqual(words, aniIWord);
    bool aniEWordEqual = areListsEqual(words, aniEWord);

    bool aniHWordEqual = areListsEqual(words, aniHWord);

    bool sciEWordEqual = areListsEqual(words, sciEWord);
    bool sciIWordEqual = areListsEqual(words, sciIWord);
    bool sciHWordEqual = areListsEqual(words, sciHWord);

    bool spoEWordEqual = areListsEqual(words, spoEWord);
    bool spoIWordEqual = areListsEqual(words, spoIWord);
    // bool spoHWordEqual = areListsEqual(words, spoHWord);

    if (aniEWordEqual) {
      aniEScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    aniEScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(aniEScore, "aniEScore", name);
    } else if (aniIWordEqual) {
      aniIScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    aniIScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(aniIScore, "aniIScore", name);
    } else if (aniHWordEqual) {
      aniHScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    aniHScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(aniHScore, "aniHScore", name);
    } else if (sciEWordEqual) {
      sciEScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    sciEScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(sciEScore, "sciEScore", name);
    } else if (sciIWordEqual) {
      sciIScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    sciIScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(sciIScore, "sciIScore", name);
    } else if (sciHWordEqual) {
      sciHScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    sciHScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(sciHScore, "sciHScore", name);
    } else if (spoEWordEqual) {
      spoEScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    spoEScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(spoEScore, "spoEScore", name);
    } else if (spoIWordEqual) {
      spoIScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    spoIScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(spoIScore, "spoIScore", name);
    } else {
      spoHScore.add(points);

      setState(() {
        life = 0;
        points = 0;
        guessedCharacters.clear();
        index = Random().nextInt(words.length);
        word = words[index];
        hintWord = hint[index];
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GenrePage(
                    name,
                    spoHScore,
                    AboutUsIconColor,
                    AppBarColor,
                    Bodybackgroundcolor,
                    ModeChanger,
                    BackArrow,
                  )));
      UpdateData(spoHScore, "spoHScore", name);
    }
  }

  //.................OpenWinDialog for win function is here..................
  openWinDialog(String title) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.purpleAccent,
                      spreadRadius: 5,
                      blurRadius: 20,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style:
                        fontStyle(25, Colors.yellow.shade700, FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Points:$points",
                    style: fontStyle(20, Colors.white, FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            life = 0;
                            level += 1;
                            guessedCharacters.clear();
                            index = Random().nextInt(words.length);
                            word = words[index];
                            hintWord = hint[index];
                          });
                        },
                        child: Center(
                          child: Text(
                            "Next Level",
                            style: fontStyle(20, Colors.black, FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        });
  }

//.................OpenLoseDialog for lost function is here..................
  openLossDialog(String title) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.purpleAccent,
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: fontStyle(25, Colors.white, FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your Points:$points",
                    style: fontStyle(20, Colors.white, FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                        onPressed: () {
                          scoreList.add(points);
                          Navigator.pop(context);
                          ScoreAdding();
                          // manipulation();
                          print("scorelist${scoreList},${points}");
                          // sort1();

                          // abc();
                          // listChecking();
                        },
                        child: Center(
                          child: Text(
                            "Play Again",
                            style: fontStyle(20, Colors.black, FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        });
  }

  //.................OpenDialog for showing answer function is here..................
  showAnswwer() {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 236, 4, 244).withOpacity(.8),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purpleAccent,
                    blurRadius: 20,
                    spreadRadius: 5,
                    blurStyle: BlurStyle.inner,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hint Left: $hintCount",
                    style: const TextStyle(
                      color: Color.fromRGBO(253, 247, 1, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  hintcount(),
                ],
              ),
            ),
          );
        });
  }

  hintcount() {
    if (hintCount > 0) {
      return Text(
        "Hidden word is:$word",
        style: fontStyle(25, Colors.white, FontWeight.bold),
        textAlign: TextAlign.center,
      );
    } else if (hintCount <= 0) {
      return Text(
        "",
        style: fontStyle(25, Colors.white, FontWeight.bold),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        "",
        style: fontStyle(25, Colors.white, FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
  }
//................this is Manage text function.............................

  String manageText() {
    String displayword = "";
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (guessedCharacters.contains(char)) {
        // ignore: prefer_interpolation_to_compose_strings
        displayword += char + " ";
      } else {
        displayword += "_ ";
      }
    }
    return displayword;
  }

  List<Widget> widgets = [
    const Image(
      height: 70,
      width: 90,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 100,
      width: 100,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 130,
      width: 120,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 150,
      width: 140,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 170,
      width: 160,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 185,
      width: 175,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 200,
      width: 190,
      image: AssetImage("assets/gameImages/hel.png"),
    ),
    const Image(
      height: 230,
      width: 250,
      image: AssetImage("assets/gameImages/failed.png"),
    ),
  ];

  // void fun() {
  //   print(index);
  //   print(hintWord);
  //   print(word);
  //   print(guessedCharacters);
  //   // print(aniEScore);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        centerTitle: true,
        backgroundColor: AppBarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScorePage(
                        words,
                        hint,
                        name,
                        scoreList,
                        genre,
                        AboutUsIconColor,
                        AppBarColor,
                        Bodybackgroundcolor,
                        ModeChanger,
                        BackArrow)));
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: BackArrow,
        ),
        title: Text(
          "Save The Ball",
          style: fontStyle(
              30, const Color.fromRGBO(253, 247, 1, 1), FontWeight.w700),
        ),
        actions: [
          IconButton(
            iconSize: 30,
            icon: soundStatus
                ? const Icon(Icons.volume_up_sharp)
                : const Icon(Icons.volume_off_sharp),
            color: const Color.fromRGBO(255, 201, 7, 1),
            onPressed: () {
              setState(() {
                soundStatus = !soundStatus;
              });
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.deepPurple.shade600, Colors.black],
            begin: Alignment.topLeft, // Gradient starting position (optional)
            end: Alignment.bottomRight, // Gradient ending position (optional)
          ),
        ),
        child: Container(
          color: Bodybackgroundcolor,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 22),
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 138, 239, 141),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 138, 239, 141),
                          blurRadius:
                              8, //kati baklo blur garaune, less value more blur
                          spreadRadius: 2, //kati tadha samma blur banaune
                        )
                      ],
                    ),
                    height: 30,
                    child: Center(
                      child: Text(
                        "Level $level",
                        style: fontStyle(14, Colors.black, FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(top: 22),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 138, 239, 141),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 138, 239, 141),
                            blurRadius:
                                8, //kati baklo blur garaune, less value more blur
                            spreadRadius: 2, //kati tadha samma blur banaune
                          )
                        ]),
                    height: 30,
                    child: Center(
                      child: Text(
                        "$points points",
                        style: fontStyle(14, Colors.black, FontWeight.w700),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    iconSize: 30,
                    icon: const Icon(Icons.wb_incandescent_sharp),
                    color: const Color.fromRGBO(255, 201, 7, 1),
                    onPressed: () {
                      if (hintCount > 0) {
                        hintCount -= 1;
                      }

                      showAnswwer();
                    },
                  )
                ],
              ),

              //------------------images----------------------
              SizedBox(
                height: 230,
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [widgets[life + 1]],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //show life
              Text(
                "${6 - life} lives left",
                style: fontStyle(
                    17, const Color.fromRGBO(253, 247, 1, 1), FontWeight.w700),
              ),

              const SizedBox(
                height: 20,
              ),

              Text(
                "Hint:$hintWord",
                style: fontStyle(
                    17, const Color.fromRGBO(253, 247, 1, 1), FontWeight.w700),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 15,
              ),

              Text(
                manageText(),
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontFamily: "FontMain",
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      blurRadius:
                          10.0, // Adjust this value to control shadow blur
                      color: Colors.white.withOpacity(
                          .6), // Adjust this value to control shadow color and opacity
                    ),
                  ],
                ),
                // fontStyle(36, Colors.white, FontWeight.w700),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 21,
              ),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 7,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(left: 11),
                  childAspectRatio: 1,
                  // clipBehavior: Clip.hardEdge,
                  children: alphabets.map((alphabet) {
                    return InkWell(
                      onTap: () => checkalphabet(alphabet),
                      child: Center(
                        child: Container(
                          height: 45,
                          width: 35,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.yellow, width: 1),
                              color: const Color.fromARGB(0, 0, 0, 0)
                                  .withOpacity(.6),
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              alphabet,
                              style:
                                  fontStyle(25, Colors.yellow, FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // ElevatedButton(onPressed: fun, child: Text("click me "))
            ],
          ),
        ),
      ),
    );
  }
}
