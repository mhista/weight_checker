import 'package:dice_2/gender_card.dart';
import 'package:dice_2/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = activeCardColour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: activeCardColour,
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: ReusableCard(
                  colour: selectedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColor,
                  cardChild: genderWidget(
                    gender: 'MALE',
                    icon_Type: FontAwesomeIcons.mars,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCard(
                  colour: selectedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColor,
                  cardChild: genderWidget(
                    gender: 'FEMALE',
                    icon_Type: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            )
          ]),
        ),
        // Expanded(
        //   child: ReusableCard(colour: activeCardColour),
        // ),
        // Expanded(
        //   child: Row(children: [
        //     Expanded(child: ReusableCard(colour: activeCardColour)),
        //     Expanded(child: ReusableCard(colour: activeCardColour))
        //   ]),
        // ),
        Container(
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0))
      ]),
    );
  }
}
