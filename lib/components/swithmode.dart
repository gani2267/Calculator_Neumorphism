import 'package:calculator/components/neucontainer.dart';
import 'package:calculator/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SwitchMode extends StatelessWidget {
  bool darkMode;

  SwitchMode(this.darkMode);


  @override
  Widget build(BuildContext context) {
    return NeuContainer(

      padding: EdgeInsets.symmetric(vertical: Dimensions.height10, horizontal: Dimensions.width15),
      borderRadius: BorderRadius.circular(Dimensions.radius40),

      child: Container(
        width: Dimensions.width70,
        child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.wb_sunny,
                color: darkMode ? Colors.grey : Colors.redAccent,
              ),
              Icon(
                Icons.nightlight_round,
                color: darkMode ? Colors.green : Colors.grey,
              ),
            ],
          ),
      ),
    );
  }
}
