// ignore_for_file: non_constant_identifier_names, no_logic_in_create_state

import 'package:flutter/material.dart';

import 'package:save_the_ball/asset/util.dart';

import 'package:save_the_ball/UI/AboutUs/aboutUs.dart';

import 'genrePage.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String name;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color AboutUsIconColor;
  Color ModeChanger;
  HomePage(this.name, this.AboutUsIconColor, this.AppBarColor,
      this.Bodybackgroundcolor, this.ModeChanger,
      {super.key});

  @override
  State<HomePage> createState() => _HomePageState(
      name, AboutUsIconColor, AppBarColor, Bodybackgroundcolor, ModeChanger);
}

class _HomePageState extends State<HomePage> {
  bool status = false;

  String name;
  Color AppBarColor;
  Color Bodybackgroundcolor;
  Color AboutUsIconColor;
  Color ModeChanger;
  Color BackArrow = Colors.white;
  // Color AppBarColor = Colors.deepPurple;
  // Color Bodybackgroundcolor = Colors.transparent.withOpacity(0.2);
  // Color AboutUsIconColor = Colors.white;
  // Color ModeChanger = Colors.black;
  // Color BackArrow = Colors.white;

  _HomePageState(this.name, this.AboutUsIconColor, this.AppBarColor,
      this.Bodybackgroundcolor, this.ModeChanger);

  DarkMode() {
    AppBarColor = status ? Colors.deepPurple : Colors.black;
    Bodybackgroundcolor =
        status ? Colors.transparent.withOpacity(0.2) : Colors.black;
    AboutUsIconColor = status ? Colors.black : Colors.white;
    ModeChanger = status ? Colors.black : Colors.yellow;
    BackArrow = status ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // drawer: Drawer(),
        appBar: AppBar(
          flexibleSpace: AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: AppBarColor,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    status = !status;
                  });
                  DarkMode();
                },
                icon: Icon(
                  Icons.brightness_medium_outlined,
                  color: ModeChanger,
                  size: 27,
                ))
          ],
          backgroundColor: Colors.transparent,
          title: Text("Save The Ball",
              style: fontStyle(
                35,
                const Color(0xFFFDDB01),
                FontWeight.bold,
              )),
          leading: PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            iconColor: AboutUsIconColor,
            iconSize: 30,
            itemBuilder: (context) => [
              PopupMenuItem(
                height: 5,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(
                          name,
                          AboutUsIconColor,
                          AppBarColor,
                          Bodybackgroundcolor,
                          ModeChanger,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'About us',
                    style: TextStyle(fontFamily: "FontMain", fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/main.jpg"), fit: BoxFit.cover),
          ),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: Bodybackgroundcolor,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 60,
                      width: 400,
                      child: const Column(
                        children: [
                          Text(
                            "Developers:",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "FontMain",
                              // backgroundColor: Colors.red,
                              color: Color.fromRGBO(253, 247, 1, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Abhinash Chaudhary',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "FontMain",
                              color: Color.fromRGBO(253, 247, 1, 1),
                            ),
                          ),
                          Text(
                            'Khejindra Kabirath',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "FontMain",
                              color: Color.fromRGBO(253, 247, 1, 1),
                            ),
                          ),
                          Text(
                            'Brahamdev Rajak',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "FontMain",
                              color: Color.fromRGBO(253, 247, 1, 1),
                            ),
                          ),
                        ],
                      )),
                ),
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
                              builder: (context) => GenrePage(
                                  name,
                                  [],
                                  AboutUsIconColor,
                                  AppBarColor,
                                  Bodybackgroundcolor,
                                  ModeChanger,
                                  BackArrow)));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue.shade700),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.white24, // Your desired border color
                          width: 1.0, // Your desired border width
                        ),
                      ), // Set your desired color
                    ),
                    child: const Text(
                      "Let's Play and Learn",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "FontMain",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
