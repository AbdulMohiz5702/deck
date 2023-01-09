import 'package:flutter/material.dart';
import './position.dart';
void main() {
  runApp(MaterialApp(
    home:MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
   List deck1 = [20, 60, 0];
   List deck1Move = [100, 100, 0.05];

   List deck2 = [20, 120, 0];
   List deck2Move = [100, 100, 0.05];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:const BoxDecoration(
            color: Color(0xFF7c162e),
          ),
          child: Stack(
            children: [
              Deck(
                right:deck1[0],
                top:deck1[1],
                turn: deck1[2],
                position: (){
                setState((){
                  deck1[0] = deck1Move[0];
                  deck1[1] = deck1Move[1] ;
                });
              }, move:(){
                setState((){
                  deck1[2] = deck1Move[2] ;
                });
              },),
              Deck(
                right:deck2[0],
                top:deck2[1],
                turn: deck2[2],
                position: (){
                  setState((){
                    deck2[0] = deck2Move[0];
                    deck2[1] = deck2Move[1] ;
                  });
                }, move:(){
                setState((){
                  deck2[2] = deck2Move[2] ;
                });
              },),
            ],
          ),
          ),
        ),
    );
  }
}



