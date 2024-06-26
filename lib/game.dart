import 'package:flutter/material.dart';
import 'dart:math';

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
      humanpick = 'Rock';
      humanPickPhoto = photo1;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Rock') {
        result = 'Draw';
      } else if (compick == 'Paper') {
        result = 'You Lose';
      } else if (compick == 'Scissor') {
        result = 'You Won';
      }
    });
  }
  void click2() {
    setState(() {
      var randomnum = random.nextInt(9);
      humanpick = 'Paper';
      humanPickPhoto = photo2;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Rock') {
        result = 'You Won';
      } else if (compick == 'Paper') {
        result = 'Draw';
      } else if (compick == 'Scissor') {
        result = 'You Lose';
      }
    });
  }

  void click3() {
    setState(() {
      var randomnum = random.nextInt(9);
      humanpick = 'Scissor';
      humanPickPhoto = photo3;

      if (randomnum >= 0 && randomnum < 3) {
        compick = 'Rock';
        compPickPhoto = photo1;
      } else if (randomnum >= 3 && randomnum < 6) {
        compick = 'Paper';
        compPickPhoto = photo2;
      } else if (randomnum >= 6 && randomnum <= 8) {
        compick = 'Scissor';
        compPickPhoto = photo3;
      }

      if (compick == 'Rock') {
        result = 'You Lose';
      } else if (compick == 'Paper') {
        result = 'You Won';
      } else if (compick == 'Scissor') {
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
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click an Image to choose a Weapon.",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: click1,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(photo1),
                        radius: 80,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Rock",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: click2,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(photo2),
                        radius: 100,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Paper",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: click3,
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(photo3),
                        radius: 80,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Scissor",style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          // Updated part below
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "You Pick: $humanpick",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    humanPickPhoto.isNotEmpty
                        ? CircleAvatar(
                            backgroundImage: AssetImage(humanPickPhoto),
                            radius: 60,
                          )
                        : Container(),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Computer Pick: $compick",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    compPickPhoto.isNotEmpty
                        ? CircleAvatar(
                            backgroundImage: AssetImage(compPickPhoto),
                            radius: 60,
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
              style: TextStyle(
                  fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
