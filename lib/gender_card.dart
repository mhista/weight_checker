import 'package:flutter/material.dart';

const genderStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class genderWidget extends StatelessWidget {
  const genderWidget({required this.gender, required this.icon_Type});

  final String gender;
  final IconData icon_Type;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon_Type, size: 80.0),
      SizedBox(height: 15.0),
      Text(
        gender,
        style: genderStyle,
      )
    ]);
  }
}
