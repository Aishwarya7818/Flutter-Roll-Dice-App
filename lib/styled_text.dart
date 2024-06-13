import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{  //custom widget function
const StyledText(this.text, {super.key}); //adding variable to this text will be mapped to text
//const StyledText(String text, {super.key}); String OutputText = text;
//String OutputText;

final String text; //using final as this varible wont change
@override
Widget build(context){
return  Center(
            child: Text(
              text, //using text here
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),),
      );

}

}