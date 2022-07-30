import 'package:calculator/components/neucontainer.dart';
import 'package:flutter/material.dart';

Widget ButtonRounded(
    { String? title,
      double padding = 17,
      IconData? icon,
      Color? iconColor,
      Color? textColor,
      required bool darkMode}) {

  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: NeuContainer(

        darkMode: darkMode,
        borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.all(padding),
        child: Container(
          width: padding * 2,
          height: padding * 2,
          child: Center(
              child: title != null
                  ? Text(
                '$title',
                style: TextStyle(
                    color: textColor != null
                        ? textColor
                        : darkMode
                        ? Colors.white
                        : Colors.black,
                    fontSize: 30),
              )
                  : Icon(
                icon,
                color: iconColor,
                size: 30,
              )),
        ),
      ),
    ),
  );
}
