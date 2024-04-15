import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:save_the_ball/asset/fetch_data.dart';

class Bg extends StatefulWidget {
  const Bg({super.key});

  @override
  State<Bg> createState() => _BgState();
}

class _BgState extends State<Bg> {
  bool status = true;
  Color backgroundcolor =
      Colors.transparent.withOpacity(0.2); // Initial background color

  void changeColor() {
    backgroundcolor = status
        ? Colors.transparent.withOpacity(0.2)
        : Colors.red; // Change to red on button click
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundcolor, // Set background color directly
        body: Center(
          child: Stack(
            // Use Stack for layering
            children: [
              // Background image container (optional)
              AnimatedContainer(
                duration: const Duration(seconds: 3),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/main.jpg'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                // Container with transparent color for button placement
                alignment: Alignment.bottomRight,
                child: Container(
                  // Adjust transparency as needed (0.0 to 1.0)
                  color:
                      backgroundcolor, // Slight transparency for better button visibility
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        status = !status;
                      });
                      changeColor();
                      // FetchData();
                    },
                    child: const Center(
                      child: Text(
                        'Change Color',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
