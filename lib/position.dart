import 'package:flutter/material.dart';

class Deck extends StatefulWidget {
  Deck(
      {required this.right,
      required this.top,
      required this.turn,
      required this.position,
      required this.move
      });
  double top;
  double right;
  double turn;
  VoidCallback position ;
  VoidCallback move ;
  @override
  State<Deck> createState() => _DeckState();
}

class _DeckState extends State<Deck> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: widget.top,
      right: widget.right,
      curve: Curves.ease,
      duration: const Duration(seconds: 3),
      child: AnimatedRotation(
        turns: widget.turn,
        duration: const Duration(seconds: 1),
        child: InkWell(
          onDoubleTap: widget.move,
          onTap: widget.position,
          child: Container(
            width: 30,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
            ),
          ),
        ),
      ),
    );
  }
}

// void _position (){
//   setState((){
//     widget.top =150;
//     widget.right = 60;
//   });
// }
//
// void _turn(){
//   setState((){
//     widget.turn = widget.turn + 0.05;
//   });
// }
