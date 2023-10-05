import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
     theme:ThemeData.dark().copyWith(
       primaryColor:Color(0xFF0A0AE21),
       scaffoldBackgroundColor:Color(0xFF0A0AE21),
     ),
      home:InputPage()
    ),
  );
}

