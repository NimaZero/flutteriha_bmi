import 'package:flutter/material.dart';
import '../constants/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    required this.bmiResult,
    required this.resultText,
    required this.interPretation,
    Key? key,
  }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        //elevation khate appbar ra ziad ya kam mikonad
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: kTextColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text(
              'Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: kItemColor,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                //double.infinity kole safhe ra baraye widght pooshesh midahad
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: kResultColor,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                        color: kItemColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        interPretation,
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                //pop in safhe ra nabood mikonad
                Navigator.pop(context);
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
                    child: Text(
                  'ReCalculate BMI',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: kItemColor,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
