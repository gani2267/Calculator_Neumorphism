import 'package:calculator/components/buttonoval.dart';
import 'package:calculator/components/buttonrounded.dart';
import 'package:calculator/components/swithmode.dart';
import 'package:flutter/material.dart';
import 'package:calculator/utils/dimensions.dart';
import 'package:math_expressions/math_expressions.dart';

import 'package:get/get.dart';

class CalculatorNeuScreen extends StatefulWidget {
  @override
  State<CalculatorNeuScreen> createState() => _CalculatorNeuScreenState();
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class _CalculatorNeuScreenState extends State<CalculatorNeuScreen> {
  bool darkmode = false;
  static String str = "";
  static String answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.padding_w_18,
            vertical: Dimensions.padding_h_18
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          darkmode ? darkmode = false : darkmode = true;
                        });
                      },
                      child: SwitchMode(darkmode),
                    ),
                    SizedBox(
                      height: Dimensions.sizedbox_70,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        child: Text(
                          str,
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: Dimensions.font35,
                              fontWeight: FontWeight.bold,
                              color: darkmode ? Colors.white : Colors.red),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '=',
                          style: TextStyle(
                              fontSize: Dimensions.font35,
                              color: darkmode ? Colors.green : Colors.grey),
                        ),
                        Text(
                          answer,
                          style: TextStyle(
                              fontSize: Dimensions.font20,
                              color: darkmode ? Colors.green : Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.sizedbox_5,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            str += "sin(";
                            setState(() {

                            });
                          },
                            child: ButtonOval(title: 'sin', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += "cos(";
                              setState(() {

                              });
                            },
                            child: ButtonOval(title: 'cos', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += "tan(";
                              setState(() {

                              });
                            },
                            child: ButtonOval(title: 'tan', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += "%";
                              setState(() {

                              });
                            },
                            child: ButtonOval(title: '%', darkMode: darkmode)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            str = "";
                            answer = "";
                            setState(() {

                            });
                          },
                          child: ButtonRounded(
                              darkMode: darkmode,
                              title: 'C',
                              textColor:
                                  darkmode ? Colors.green : Colors.redAccent),
                        ),
                        GestureDetector(
                        onTap: (){
                          str += '(';
                          setState(() {

                          });
                        },child: ButtonRounded(title: '(', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += ')';
                              setState(() {

                              });
                            },child: ButtonRounded(title: ')', darkMode: darkmode)),
                        GestureDetector(
                          onTap: (){
                            str += '/';
                            setState(() {

                            });
                          },
                          child: ButtonRounded(
                              title: '/',
                              darkMode: darkmode,
                              textColor:
                                  darkmode ? Colors.green : Colors.redAccent),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              str += '7';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '7', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '8';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '8', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '9';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '9', darkMode: darkmode)),
                        GestureDetector(
                          onTap: (){
                            str += '×';
                            setState(() {

                            });
                          },
                          child: ButtonRounded(
                              title: 'x',
                              darkMode: darkmode,
                              textColor:
                              darkmode ? Colors.green : Colors.redAccent),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              str += '4';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '4', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '5';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '5', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '6';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '6', darkMode: darkmode)),
                        GestureDetector(
                          onTap: (){
                            str += '-';
                            setState(() {

                            });
                          },
                          child: ButtonRounded(
                              title: '-',
                              darkMode: darkmode,
                              textColor:
                              darkmode ? Colors.green : Colors.redAccent),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              str += '1';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '1', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '2';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '2', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '3';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '3', darkMode: darkmode)),
                        GestureDetector(
                          onTap: (){
                            str += '+';
                            setState(() {

                            });

                          },
                          child: ButtonRounded(
                              title: '+',
                              darkMode: darkmode,
                              textColor:
                              darkmode ? Colors.green : Colors.redAccent),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              str += '.';
                              setState(() {

                              });
                            },child: ButtonRounded(title: '.', darkMode: darkmode)),
                        GestureDetector(
                            onTap: (){
                              str += '0';
                              setState(() {

                              });
                              setState(() {
                                equalPressed();
                              });
                            },child: ButtonRounded(title: '0', darkMode: darkmode)),
                        GestureDetector(
                          onTap: () {
                            str = str.substring(0,str.length-1);
                            setState(() {

                            });
                            setState(() {
                              equalPressed();
                            });
                          },
                          child: ButtonRounded(
                              darkMode: darkmode,
                              icon: Icons.backspace_outlined,
                              iconColor:
                                  darkmode ? Colors.green : Colors.redAccent),
                        ),
                        GestureDetector(
                          onTap: (){
                            equalPressed();
                            print(answer);
                            print(str);
                            str = answer;
                            setState(() {

                            });
                          },
                          child: ButtonRounded(
                              darkMode: darkmode,
                              title: '=',
                              textColor:
                                  darkmode ? Colors.green : Colors.redAccent),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = str;
    finaluserinput = str.replaceAll('×','*');
    finaluserinput = finaluserinput.replaceAll('%', '* 0.01 *');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    print(exp);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();

    print("width");
    print(Get.width);

    print("height");
    print(Get.height);
    print("HeightFactor");
    print(Dimensions.heightFactor);

  }
}
