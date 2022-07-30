
import 'package:calculator/components/neucontainer.dart';
import 'package:flutter/material.dart';

Widget ButtonOval({required String title, required bool darkMode,double padding = 17}){
  return Padding(
    padding: const EdgeInsets.all(15),

    child: NeuContainer(
      darkMode: darkMode,
      borderRadius: BorderRadius.circular(30),
      padding:
      EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),

      child: Container(
        width: padding,
        child: Center(
          child: Text('$title',
          style: TextStyle(
            color: darkMode ? Colors.white : Colors.black,
            fontSize: 10.5,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    ),
  );
}