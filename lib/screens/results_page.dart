import 'package:flutter/material.dart';
import '../components/constants.dart';
import 'file:///D:/Coding/AndroidStudioProjects/bmi-calculator-flutter/lib/components/CardReusable.dart';
import '../components/bottomButton.dart';

class PageResults extends StatelessWidget {
  PageResults(
      {@required this.calculation,
      @required this.bmi,
      @required this.bmiRecommendation});

  final calculation;
  final bmi;
  final bmiRecommendation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kResult,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardReusable(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      calculation,
                      style: kCalculation,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kNumberBMI,
                    ),
                  ),
                  Text(
                    bmiRecommendation,
                    textAlign: TextAlign.center,
                    style: kBMIRecomendation,
                  ),
                ],
              ),
            ),
          ),
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
