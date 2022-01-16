// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redmi/BMI Calculator/calc.dart';
import 'package:redmi/BMI Calculator/reusablecard.dart';
import 'constants.dart';
import 'input2.dart';


class Bmi_Calculator extends StatefulWidget {
  @override
  _Bmi_CalculatorState createState() => _Bmi_CalculatorState();
}

class _Bmi_CalculatorState extends State<Bmi_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kCardcolor,
        title: const Center(
            child: Text(
          'BMI Calculator',
          style: kTitlefont,
        )),
      ),
      body: _Calculator(),
    );
  }
}

class _Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

String getlabel;
double height = 5.0;
int weight = 50;
int age = 20;

enum gender { male, female }
gender selectedcard;

class _CalculatorState extends State<_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedcard = gender.male;
                      getlabel = 'Hello Sir';
                      
                    });
                  }),
                  child: ReusableCard(
                    onChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.male,
                            color: selectedcard == gender.male
                                ? Colors.blue[50]
                                : Colors.white54,
                            size: 100.0,
                          ),
                          kHeight,
                          Text(
                            'Male',
                            style: TextStyle(
                              fontFamily: 'Charm',
                              color: selectedcard == gender.male
                                  ? Colors.green
                                  : Color(0x89FFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              kWidth,
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedcard = gender.female;
                      getlabel = 'Hello Madam';
                      
                    });
                  },
                  child: ReusableCard(
                    onChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.female,
                            color: selectedcard == gender.female
                                ? Colors.blue[50]
                                : Colors.white54,
                            size: 100.0,
                          ),
                          kHeight,
                          Text(
                            'Female',
                            style: TextStyle(
                              fontFamily: 'Charm',
                              color: selectedcard == gender.female
                                  ? Colors.green
                                  : Color(0x89FFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          kHeight,
          ReusableCard(
            onChild: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kHeadingTextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toStringAsFixed(1),
                        style: kHeadingnumberstyle,
                      ),
                      Text(
                        'ft.',
                        style: kMeasures,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white54,
                      inactiveTrackColor: Colors.blue[50],
                      thumbColor: Colors.green,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayColor: Color(0x294CAF50),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 36.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 3.0,
                      max: 7.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          kHeight,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    onChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: kHeadingTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                weight.toString(),
                                style: kHeadingnumberstyle,
                              ),
                              Text(
                                'Kg',
                                style: kMeasures,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 1) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                              kButtonWidth,
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    if (weight <= 300) {
                                      weight++;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kWidth,
                Expanded(
                  child: ReusableCard(
                    onChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kHeadingTextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kHeadingnumberstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (age >= 6) {
                                      age--;
                                    }
                                  });
                                },
                              ),
                              kButtonWidth,
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    if (age <= 120) {
                                      age++;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          kHeight,
          GestureDetector(
            onTap: () {
              if (selectedcard == gender.male ||
                  selectedcard == gender.female) {
                Bmicalc evalv = Bmicalc(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    result: evalv.calc(),
                    motivator: evalv.motivator(),
                    gotresult: evalv.gotresult(),
                    label: getlabel,
                  );
                }));
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          backgroundColor: kbackgroundcolor,
                          title: Text('Your Gender is Required.!!', style: kalertTextstyle,),
                          content: Icon(
                            FontAwesomeIcons.bullhorn,
                            size: 100.0,
                            color: Colors.green,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('OK', style: kalertbuttonTextstyle,),
                            )
                          ]);
                    });
              }
            },
            child: BottomButton(
              onChild: Center(
                child: Text(
                  'Calculate',
                  style: kCalculate,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
