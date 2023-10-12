import 'package:dice_2/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          sliderTheme: SliderTheme.of(context).copyWith(
              trackHeight: 3.0,
              thumbColor: Color(0xFFEB1555),
              overlayColor: Color(0x29EB1555),
              inactiveTrackColor: Color(0xFF8D8E98),
              activeTrackColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
        ),
        home: InputPage());
  }
}
