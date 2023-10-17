import 'package:dice_2/components/button_bottom.dart';
import 'package:dice_2/components/calculator_brain.dart';
import 'package:dice_2/components/constants.dart';
import 'package:dice_2/components/gender_card.dart';
import 'package:dice_2/components/reusable_card.dart';
import 'package:dice_2/components/rounded_button.dart';
import 'package:dice_2/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  int age = 20;

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
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      RoundIconButton(
                        IconChild: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        IconChild: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ]),
                  ]),
            )),
            Expanded(
                child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kGenderStyle,
                    ),
                    Text(age.toString(), style: kBiggerFont),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      RoundIconButton(
                        IconChild: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        IconChild: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ]),
                  ]),
            ))
          ]),
        ),
        BottomButton(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(
                            bmiResult: calc.calculateBMI(),
                            bmiText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )));
            },
            buttonText: 'Calculate')
      ]),
    );
  }
}
