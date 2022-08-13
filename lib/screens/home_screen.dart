import 'package:flutter/material.dart';
import 'package:flutteriha_bmi/screens/result_screen.dart';
import 'package:flutteriha_bmi/widgets/field_box.dart';
import 'package:flutteriha_bmi/widgets/genders.dart';
import '../constants/constants.dart';
import '../widgets/calculator_bmi.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  int weight = 62;
  int height = 173;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        //elevation khate appbar ra ziad ya kam mikonad
        elevation: 0.0,
        leading: IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.menu,
            color: kTextColor,
          ),
        ),
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
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: kItemColor,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          gender = Gender.male;
                        });
                      }),
                      child: Genders(
                        icon: Icon(
                          Icons.check_circle,
                          color:
                              gender == Gender.male ? kGreenColor : kTextColor,
                        ),
                        border: Border.all(
                          width: 2.0,
                          color:
                              gender == Gender.male ? kGreenColor : kCardColor,
                        ),
                        icon_gender: const Icon(
                          Icons.male,
                          color: kItemColor,
                          size: 100.0,
                        ),
                        gender_text: 'Male',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: Genders(
                        icon: Icon(
                          Icons.check_circle,
                          color: gender == Gender.female
                              ? kGreenColor
                              : kTextColor,
                        ),
                        border: Border.all(
                          width: 2.0,
                          color: gender == Gender.female
                              ? kGreenColor
                              : kCardColor,
                        ),
                        icon_gender: const Icon(
                          Icons.female,
                          color: kItemColor,
                          size: 100.0,
                        ),
                        gender_text: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        FieldBox(
                          text: Text(
                            weight.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          iconButtonn: IconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: const Icon(Icons.remove_circle),
                          ),
                          iconButtonm: IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: const Icon(Icons.add_circle),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        FieldBox(
                          text: Text(
                            height.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          iconButtonn: IconButton(
                            onPressed: () {
                              setState(() {
                                height--;
                              });
                            },
                            icon: const Icon(Icons.remove_circle),
                          ),
                          iconButtonm: IconButton(
                            onPressed: () {
                              setState(() {
                                height++;
                              });
                            },
                            icon: const Icon(Icons.add_circle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Age',
              style: TextStyle(
                color: kTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FieldBox(
                          text: Text(
                            age.toString(),
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          iconButtonn: IconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: const Icon(Icons.remove_circle),
                          ),
                          iconButtonm: IconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: const Icon(Icons.add_circle),
                          ),
                        ),
            const SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                CalculatorBMI calculatorBMI =
                    CalculatorBMI(height: height, weight: weight);

                if (gender != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmiResult: calculatorBMI.calculateBMI(),
                        resultText: calculatorBMI.getResult(),
                        interPretation: calculatorBMI.getInterPretation(),
                      ),
                    ),
                  );
                } else {
                  print('nemitavanim');
                }
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
                    child: Text(
                  'Calculate',
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
