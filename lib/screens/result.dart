import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/buttom_button.dart';

class Results extends StatelessWidget {
  Results({@required this.bmiCategory, @required this.bmiValue, this.tip});
  final String bmiCategory;
  final String bmiValue;
  final String tip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.center,
                  style: kYourResult,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ResuableCard(
                colorOfTheContainer: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiCategory,
                      style: kBMIText,
                    ),
                    Text(
                      bmiValue,
                      style: kBMIResultText,
                    ),
                    Text(
                      tip,
                      textAlign: TextAlign.center,
                      style: kTipText,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: 'RE-CALCULATE')
          ],
        ));
  }
}
