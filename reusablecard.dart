// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:holding_gesture/holding_gesture.dart';

// SMALL BOX CONTAINERS
class ReusableCard extends StatelessWidget {
  const ReusableCard({this.onChild});

  final Widget onChild;

  @override
  Widget build(BuildContext context) {
    return Container(
     child: onChild,
      // width: 180.0,
      // height: 200.0,
      decoration: BoxDecoration(
        color: kCardcolor,
        borderRadius: BorderRadius.circular(20.0),
        
      ),
    );
  }
}

// BIG REUSABLE CARD FOR RESULT PAGE

class ReusablebigCard extends StatelessWidget {
  const ReusablebigCard({this.onChild});

  final Widget onChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: onChild,
      width: 180.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: kCardcolor,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

// CALCULATE BUTTON
class BottomButton extends StatelessWidget {
  const BottomButton({this.onChild});

  final Widget onChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onChild,
      width: 180.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

// ROUND ICON BUTTON USED FOR WEIGHT AND AGE
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({this.onPressed, this.icon});
  final VoidCallback onPressed;
  final IconData icon;
  
  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      onHold: onPressed,
      holdTimeout: const Duration(milliseconds: 200),
      enableHapticFeedback: true,
      child: RawMaterialButton(
        fillColor: Colors.green,
        shape: const CircleBorder(),
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPressed,
        child: Center(
            child: Icon(
          icon,
          size: 30.0,
          color: Colors.blue[50],
        )),
      ),
    );
  }
}


// ROUND BUTTON

class Roundtap extends StatelessWidget {
  const Roundtap({this.icon});

  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Icon(
        icon,
        size: 30.0,
        color: Colors.blue[50],
      )),
      
      constraints: const BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}