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
   double ? top ;
   double ? right ;
   double ? turn ;
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
              Deck(right:right = 40 , top:top =40, turn: turn = 0, position: (){
                setState((){
                  top = 100;
                  right = 100 ;
                });
              }, move:(){
                setState((){
                  turn = 0.05 ;
                });
              },),
              Deck(right:right = 70, top:top =70, turn: turn = 0,position: (){
                setState((){
                  top = 150;
                  right = 150 ;
                });
              },move: (){
                setState((){
                  turn = 0.05 ;
                });
              },),
            ],
          ),
          ),
        ),
    );
  }
}



