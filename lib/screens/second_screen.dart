import 'package:dice_2/components/button_bottom.dart';
import 'package:dice_2/components/constants.dart';
import 'package:dice_2/components/reusable_card.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen(
      {required this.bmiResult,
      required this.bmiText,
      required this.interpretation});

  final String bmiResult;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI2'),
        backgroundColor: kActiveCardColour,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result', style: kTitleTextStyle)),
          Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(bmiText, style: kResultTextStyle),
                      Text(bmiResult, style: kBMITextStyle),
                      Text(interpretation, style: kBodyTextStyle),
                    ]),
              ),
              flex: 5),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
