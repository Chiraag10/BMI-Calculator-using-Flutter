// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, import_of_legacy_library_into_null_safe, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redmi/BMI Calculator/input.dart';


void main() {
  runApp(Redmi());
}

class Redmi extends StatelessWidget {
  const Redmi({Key key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: 'BMI Calculator',
      home: Bmi_Calculator(),
    );
  }
}
