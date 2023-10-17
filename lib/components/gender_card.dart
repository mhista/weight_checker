import 'package:flutter/material.dart';

import 'constants.dart';

class genderWidget extends StatelessWidget {
  genderWidget({required this.gender, required this.icon_Type});

  final String gender;
  final IconData icon_Type;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon_Type, size: 80.0),
      SizedBox(height: 15.0),
      Text(
        gender,
        style: kGenderStyle,
      )
    ]);
  }
}
