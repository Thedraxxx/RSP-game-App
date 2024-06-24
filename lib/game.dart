import "package:flutter/material.dart";

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  String photo1 = "assets/Images/rock.jpg";
  String photo2 = "assets/Images/konan.jpg";
  String photo3 = "assets/Images/scissor.jpg";
  
  String result ='';

  void click1(){
    setState(() {
          result = "You Picked Rock";
    });
  }
   void click2(){
    setState(() {
      result ='You Picked Papper';
      print(result);
    });
  }
   void click3(){
    setState(() {
      result ='You Picked Scissor';
      print(result);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("RSP-Game",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.menu,color: Colors.white,)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rock Papper Scissor ?",style: TextStyle(fontSize: 15),),
            ],
          ),
          SizedBox(height: 40,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap:  click1,
              child: Container(
                 width: 100,
                 height: 100,
                child: Image.asset(photo1),),
            ),  
               GestureDetector(onTap: click2,
                 child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(photo2)),
               ),
               GestureDetector(
                onTap: click3,
                 child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(photo3)),
               )
          ],
          
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(result,style: TextStyle(fontSize: 20),),
            ],
          )
        ],
      ),
    );
  }
}