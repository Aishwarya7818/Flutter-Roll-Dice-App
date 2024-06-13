import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

//variables
var styleAligntop = Alignment.topLeft;
var styleAlignbottom = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //Constructive functions
  const GradientContainer(this.color1, this.color2, this.color3,
      {super.key}); // const GC(this.colors)
  final Color color1;
  final Color color2;
  final Color color3;
//final List<Color> colors;

//const GradientContainer.purple({super.key}) : color1 = Colors.deepOrange, color2=Colors.deepOrangeAccent, color3=Colors.deepPurple;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color1,
          color2,
          color3,
        ],
        begin: styleAligntop,
        end: styleAlignbottom,
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
