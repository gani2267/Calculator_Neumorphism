
import 'package:calculator/components/neucontainer.dart';
import 'package:calculator/utils/dimensions.dart';
import 'package:flutter/material.dart';

Widget ButtonOval({required String title, required bool darkMode,double padding = 17}){

  padding = Dimensions.height17;
  double width15 = Dimensions.width15;

  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 15
    ),

    child: NeuContainer(
      darkMode: darkMode,
      borderRadius: BorderRadius.circular(Dimensions.radius30),
      padding:
      EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),

      child: Container(
        width: padding,
        child: Center(
          child: Text('$title',
          style: TextStyle(
            color: darkMode ? Colors.white : Colors.black,
            fontSize: Dimensions.font10,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    ),
  );
}