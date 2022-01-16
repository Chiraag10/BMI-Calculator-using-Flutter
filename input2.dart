// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:redmi/BMI Calculator/reusablecard.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultPage({this.result, this.motivator, this.gotresult, this.label});

  final String result;
  final String motivator;
  final String gotresult;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundcolor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kCardcolor,
          title: const Center(
              child: Text(
            'BMI Results',
            style: kTitlefont,
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              kHeight,
              Expanded(
                child: ReusablebigCard(
                  onChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        label,
                        style: kHeadingTextstyle,
                      ),
                      Text(
                        'Your Result',
                        style: kHeadingresultTextstyle,
                      ),
                      Text(
                        result,
                        style: kHeadingresultNumberTextstyle,
                      ),
                      Text(
                        "[ 18.5 < Normal BMI Range < 25.0 ]",
                        style: kMeasures,
                      ),
                      Text(
                        'You are ' + gotresult,
                        style: kHeadingTextstyle,
                      ),
                      Text(
                        motivator,
                        style: kHeadingTextstyle,
                      ),
                    ],
                  ),
                ),
              ),
              kHeight,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: BottomButton(
                  onChild: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                          child: Text(
                        'Check Again',
                        style: kCalculate,
                      ))),
                ),
              ),
            ],
          ),
        ));
  }
}
