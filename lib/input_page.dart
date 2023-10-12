import 'package:dice_2/gender_card.dart';
import 'package:dice_2/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 59;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = activeCardColour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: kActiveCardColour,
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? kActiveCardColour
                    : kInactiveCardColor,
                cardChild: genderWidget(
                  gender: 'MALE',
                  icon_Type: FontAwesomeIcons.mars,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female
                    ? kActiveCardColour
                    : kInactiveCardColor,
                cardChild: genderWidget(
                  gender: 'FEMALE',
                  icon_Type: FontAwesomeIcons.venus,
                ),
              ),
            )
          ]),
        ),
        Expanded(
          child: ReusableCard(
            colour: kActiveCardColour,
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kGenderStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kBiggerFont,
                    ),
                    Text(
                      'cm',
                      style: kGenderStyle,
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double newValue) {
                    print(newValue);
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kGenderStyle,
                        ),
                        Text(weight.toString(), style: kBiggerFont),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {},
                              )
                            ])
                      ]),
                )),
            Expanded(child: ReusableCard(colour: kActiveCardColour))
          ]),
        ),
        Container(
            color: kBottomContainerColour,
            width: double.infinity,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0))
      ]),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: () {},
    );
  }
}
