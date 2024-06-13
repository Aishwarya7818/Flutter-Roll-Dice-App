import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activediceImage = 'assets/images/dice-images/dice-1.png';
  var currentdice = 2;

  void rolldice() {
    setState(() {
      //This function changes the state and executes build function again
      currentdice = Random().nextInt(6) + 1;
      //  currentdice = 'assets/images/dice-images/dice-$currentdice.png';
    });

    // print("Changing...");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentdice.png',
          width: 200,
        ),
        //const SizedBox(height: 20),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll dice'))
      ],
    );
  }
}
