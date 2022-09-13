import 'package:bmi_calculator/component/round_icon_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/utils/app_layout.dat.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/screen///reusable_card.dart';
import 'package:bmi_calculator/screen//results_page.dart';
import 'package:bmi_calculator/component//bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),

                  // Container(
                  //   child: ReusableCard(
                  //     onPress: () {
                  //       setState(() {
                  //         selectedGender = Gender.male;
                  //       });
                  //     },
                  //     colour: selectedGender == Gender.male
                  //         ? kActiveCardColour
                  //         : kInactiveCardColour,
                  //     cardChild: Container(
                  //       margin: EdgeInsets.only(top: 30),
                  //       child: IconContent(
                  //         icon: FontAwesomeIcons.mars,
                  //         label: 'MALE',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.3,
                  //   child: ReusableCard(
                  //     onPress: () {
                  //       setState(() {
                  //         selectedGender = Gender.female;
                  //       });
                  //     },
                  //     colour: selectedGender == Gender.female
                  //         ? kActiveCardColour
                  //         : kInactiveCardColour,
                  //     cardChild: Container(
                  //       margin: EdgeInsets.only(top: 30),
                  //       child: IconContent(
                  //         icon: FontAwesomeIcons.venus,
                  //         label: 'FEMALE',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 25),
              height: AppLayOut.getHeight(150, context),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: kActiveCardColour,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm,',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 110.0,
                      max: 210.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),

              // Container(
              //   height: 170,
              //   child: ReusableCard(
              //     onPress: () {},
              //     colour: kActiveCardColour,
              //     cardChild: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: <Widget>[
              //         Container(
              //           child: Text(
              //             'Height',
              //             style: kLabelTextStyle,
              //           ),
              //         ),
              //         Container(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.baseline,
              //             textBaseline: TextBaseline.alphabetic,
              //             children: <Widget>[
              //               Text(
              //                 height.toString(),
              //                 style: kNumberTextStyle,
              //               ),
              //               Text(
              //                 'cm,',
              //                 style: kLabelTextStyle,
              //               ),
              //             ],
              //           ),
              //         ),
              //         SliderTheme(
              //           data: SliderTheme.of(context).copyWith(
              //             inactiveTrackColor: Color(0xFF8D8E98),
              //             activeTrackColor: Colors.white,
              //             thumbColor: Color(0xFFEB1555),
              //             overlayColor: Color(0x29EB1555),
              //             thumbShape:
              //                 RoundSliderThumbShape(enabledThumbRadius: 10.0),
              //             overlayShape: RoundSliderOverlayShape(
              //               overlayRadius: 30.0,
              //             ),
              //           ),
              //           child: Slider(
              //             value: height.toDouble(),
              //             min: 110.0,
              //             max: 210.0,
              //             onChanged: (double newValue) {
              //               setState(() {
              //                 height = newValue.round();
              //               });
              //             },
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
            // Container(
            //   child: Row(
            //     children: <Widget>[
            //       Container(
            //         height: 190,
            //         child: ReusableCard(
            //           onPress: () {},
            //           colour: kActiveCardColour,
            //           cardChild: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: <Widget>[
            //               Text(
            //                 'Weight',
            //                 style: kLabelTextStyle,
            //               ),
            //               Text(
            //                 weight.toString(),
            //                 style: kNumberTextStyle,
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: <Widget>[
            //                   RoundIconButton(
            //                     onPressed: () {
            //                       setState(() {
            //                         weight--;
            //                       });
            //                     },
            //                     icon: FontAwesomeIcons.minus,
            //                   ),
            //                   SizedBox(
            //                     width: 10.0,
            //                   ),
            //                   RoundIconButton(
            //                     icon: FontAwesomeIcons.plus,
            //                     onPressed: () {
            //                       setState(() {
            //                         weight++;
            //                       });
            //                     },
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: <Widget>[
            //             Container(
            //               height: 190,
            //               child: ReusableCard(
            //                 onPress: () {},
            //                 colour: kActiveCardColour,
            //                 cardChild: Column(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: <Widget>[
            //                     Text(
            //                       'Age',
            //                       style: kLabelTextStyle,
            //                     ),
            //                     Text(
            //                       age.toString(),
            //                       style: kNumberTextStyle,
            //                     ),
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: <Widget>[
            //                         RoundIconButton(
            //                           onPressed: () {
            //                             setState(() {
            //                               age--;
            //                             });
            //                           },
            //                           icon: FontAwesomeIcons.minus,
            //                         ),
            //                         SizedBox(
            //                           width: 10.0,
            //                         ),
            //                         RoundIconButton(
            //                           onPressed: () {
            //                             setState(() {
            //                               age++;
            //                             });
            //                           },
            //                           icon: FontAwesomeIcons.plus,
            //                         )
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 33,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: kActiveCardColour,
                          ),
                          padding: EdgeInsets.only(bottom: 10, top: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Weight',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundIconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: FontAwesomeIcons.minus,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: kActiveCardColour,
                                ),
                                padding: EdgeInsets.only(bottom: 10, top: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Age',
                                      style: kLabelTextStyle,
                                    ),
                                    Text(
                                      age.toString(),
                                      style: kNumberTextStyle,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        RoundIconButton(
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          icon: FontAwesomeIcons.minus,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        RoundIconButton(
                                          icon: FontAwesomeIcons.plus,
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResults: calc.calculateBMI(),
                      resultsText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
