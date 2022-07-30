import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions{

  static double screenHeight = Get.height;
  static double screenWidth = Get.width;

  static double rmxHeight = 736;
  static double rmxWidth = 360;

  static double heightFactor = screenHeight/rmxHeight;
  static double widthFactor = screenWidth/rmxWidth;

  //calculatorscreen
  static double sizedbox_70 = 60*heightFactor;
  static double sizedbox_5 = 5*heightFactor;

  static double padding_h_18 = 18*heightFactor;
  static double padding_w_18 = 18*widthFactor;

  static double font35 = 35*heightFactor;
  static double font20 = 20*heightFactor;


  //switchmode
  static double width70 = 70*widthFactor;
  static double height10 = 10*heightFactor;
  static double width15 = 15*widthFactor;
  static double radius40 = 40*heightFactor;


  //buttonRouded
  static double height6 = 6*heightFactor;
  static double width6 = 6*widthFactor;
  static double font30 = 30*heightFactor;
  static double icon30 = 30*heightFactor;

  static double height17 = 17*heightFactor;


  static double font10 = 10*heightFactor;
  static double radius30 = 30*heightFactor;

}