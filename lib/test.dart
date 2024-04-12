import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Stack(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'Khejindra Kabirath',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ]),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade200,
                  size: 400,
                ),
              ),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade100,
                  size: 350,
                ),
              ),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade300,
                  size: 300,
                ),
              ),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade400,
                  size: 250,
                ),
              ),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink.shade200,
                  size: 200,
                ),
              ),
              Center(
                child: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 244, 14, 14),
                  size: 150,
                ),
              ),
              const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 100,
                ),
              ),
              const Center(
                child: Text(
                  "Coding ",
                  style: TextStyle(color: Colors.yellow, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
