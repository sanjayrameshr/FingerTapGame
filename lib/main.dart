import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage()
  ));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            height: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            child:Center(
              child: MaterialButton(
                shape:CircleBorder(),
                color: Colors.redAccent,
                height: 100,
                minWidth: 100,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));

                },
                child: Text("START!!"),
            ),
            )),
          Container(
            color: Colors.redAccent,
            height: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            child:Center(
              child: MaterialButton(
                shape: CircleBorder(),
                color: Colors.lightBlueAccent,
                height: 100,
                minWidth: 100,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
                },
                child: Text("START!!"),
            ),
            ),
          )


        ],

      ),

    );
  }
}
class GamePage extends StatefulWidget{
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double blueCardHeight = 0;
  double redCradHeight = 0;
  bool initalized = false;
  int playerAScore = 0;
  int playerBScore = 0;
  @override
  Widget build(BuildContext context) {
    if (initalized==false){
      blueCardHeight = MediaQuery.of(context).size.height/2;
      redCradHeight = MediaQuery.of(context).size.height/2;

      initalized = true;
    }
    
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: (){
              print(blueCardHeight);
              setState(() {
                blueCardHeight = blueCardHeight+20;
                redCradHeight = redCradHeight -20;

                playerAScore= playerAScore + 5;
              });
              double maxHeight = MediaQuery.of(context).size.height - 30;
              if (blueCardHeight > maxHeight){
                Navigator.push(context, MaterialPageRoute(builder: (context) => resultPage(playerAScore,"A")));
              }
            } ,
            padding: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              height: blueCardHeight,
              color: Colors.lightBlueAccent,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Player A", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  
                    ),
                  
                  Text(
                    playerAScore.toString(),                    
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
                ],
              ),
              
            ),
          ),
          MaterialButton(
            onPressed: (){
              print(redCradHeight);
              setState(() {
                blueCardHeight = blueCardHeight-20;
                redCradHeight = redCradHeight +20;
                playerBScore= playerBScore + 5;
              });
              double maxHeight = MediaQuery.of(context).size.height - 30;
              if(redCradHeight > maxHeight){
                Navigator.push(context, MaterialPageRoute(builder: (context) => resultPage(playerBScore, "B")));
              }
            },
            padding: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              height: redCradHeight,
              color: Colors.redAccent,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Player B", style: TextStyle(fontSize: 30),),
                  
                    ),
                  
                  Text(
                    playerBScore.toString(),
                    style: TextStyle(fontSize: 30), ),
                ],
              ),
              
            ),
          )
        ],
      ),
    );
  }
}
class resultPage extends StatelessWidget{
  int score = 0;
  String player = "";
  resultPage(this.score, this.player);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: player == "A" ? Colors.lightBlueAccent : Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(score.toString(), style: TextStyle(fontSize: 60,fontWeight:  FontWeight.bold),),
            Text(player == "A" ? "PLAYER A WON 🥳" : "PLAYER B WON 🥳", style: TextStyle(fontSize: 35)),
            MaterialButton(onPressed :() {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text("Restart GAME 👾"),
            )
          ],
        ),
      ),
    );
  }
}
