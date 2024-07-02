import 'package:flutter/material.dart';
import 'dart:math';

import 'package:rspgame/main.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  String photo1 = "assets/Images/rock.jpg";
  String photo2 = "assets/Images/konan.jpg";
  String photo3 = "assets/Images/scissor.jpg";
  String compick = '';
  String humanpick = '';
  var result = '';
  var random = Random();
  String compPickPhoto = '';
  String humanPickPhoto = '';

  void click1() {
    setState(() {
      var randomnum = random.nextInt(9);
      humanpick = 'You Pick Rock';
      humanPickPhoto = photo1;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Computer Pick Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Computer Pick Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Computer Pick Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Computer Pick Rock') {
        result = 'Draw';
      } else if (compick == 'Computer Pick Paper') {
        result = 'You Lose';
      } else if (compick == 'Computer Pick Scissor') {
        result = 'You Won';
      }
    });
  }

  void click2() {
    setState(() {
      var randomnum = random.nextInt(9);
      humanpick = 'You Pick Paper';
      humanPickPhoto = photo2;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Computer Pick Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Computer Pick Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Computer Pick Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Computer Pick Rock') {
        result = 'You Won';
      } else if (compick == 'Computer Pick Paper') {
        result = 'Draw';
      } else if (compick == 'Computer Pick Scissor') {
        result = 'You Lose';
      }
    });
  }

  void click3() {
    setState(() {
      var randomnum = random.nextInt(9);
      humanpick = 'You Pick Scissor';
      humanPickPhoto = photo3;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Computer Pick Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Computer Pick Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Computer Pick Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Computer Pick Rock') {
        result = 'You Lose';
      } else if (compick == 'Computer Pick Paper') {
        result = 'You Won';
      } else if (compick == 'Computer Pick Scissor') {
        result = 'Draw';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "RSP-Game",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                result = '';
                compick = '';
                humanpick = '';
                compPickPhoto = '';
                humanPickPhoto = '';
              });
            },
            icon: Icon(Icons.delete, size: 40, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click an Image to choose a Weapon.",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: click1,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                        image: DecorationImage(
                          image: AssetImage(photo1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Rock",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: click2,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                        image: DecorationImage(
                          image: AssetImage(photo2),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Paper",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: click3,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                        image: DecorationImage(
                          image: AssetImage(photo3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Scissor",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "$humanpick",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    humanPickPhoto.isNotEmpty
                        ? Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                              image: DecorationImage(
                                image: AssetImage(humanPickPhoto),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "$compick",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    compPickPhoto.isNotEmpty
                        ? Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                              image: DecorationImage(
                                image: AssetImage(compPickPhoto),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Text(
              result,
              style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
