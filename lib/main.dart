// Project 4

import 'package:flutter/material.dart';
import 'dart:math';
/// Displays random images on button pressed

/// Expanded
///   Flex
/// Image.asset
/// buttons --Flutter doc
/// {means some code that have to be executed}
/// Var
/// Stateful(to make some changes"variable")/stateless(to keep what it is"Constant") Widget
///   setstate

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 235, 235),
      appBar: AppBar(
        title: const Center(child: Text('Dice Roller 🎲')),
        backgroundColor: const Color.fromARGB(248, 236, 24, 34),
      ),
      body: const DiceePage(),
    ),
  ));
}

// class DiceePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDieNum = 5;
//     var rightDieNum = 3;
//     return Center(
//       child: Row(children: <Widget>[
//         // SizedBox(width: 10),
//         Expanded(
//           child: FlatButton(
//             onPressed: () {
//               print("Left");
//             },
//             child: Image.asset('images/dice$leftDieNum.png'),
//           ),
//         ),
//         // SizedBox(width: 20),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: TextButton(
//                 onPressed: () {
//                   print("Right");
//                 },
//                 child: Image.asset('images/dice$rightDieNum.png')),
//           ),
//         ),
//         // SizedBox(width: 10),
//       ]),
//     );
//   }
// }

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDieNum = 6;
  int rightDieNum = 6;

  void roll(){
    leftDieNum = Random().nextInt(6) + 1;
    rightDieNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context)  {
    return Center(
      child: Row(children: <Widget>[
        // SizedBox(width: 10),
        Expanded(
          child: FlatButton(
            onPressed: () {
              // print("Left");
              setState(() { // To rebuild the current change
                // leftDieNum = Random().nextInt(6) + 1;
                // rightDieNum = Random().nextInt(6) + 1;
                roll();
              });
            },
            child: Image.asset('images/dice$leftDieNum.png'),
          ),
        ),
        // SizedBox(width: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDieNum = Random().nextInt(6) + 1;
                    leftDieNum = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDieNum.png')),
          ),
        ),
        // SizedBox(width: 10),
      ]),
    );
  }
}
