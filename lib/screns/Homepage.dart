import 'dart:ui';

import 'package:bmi/conestant.dart';
import 'package:bmi/screns/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/widgets/widget.dart';
import 'dart:math';

enum Gender { male, female }

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double height = 180;
  int weight = 65;
  int age = 20;
  Gender selectedGender = Gender.male;

  void _goTOResultScreen() {
    double _result = weight / pow(height / 100, 2);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) {
          return ResultScreen(
            result: _result,
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculeter"),
        centerTitle: true,
        backgroundColor: Color(0xff0a0e21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusbalCard(
                  selected: selectedGender == Gender.male ? true : false,
                  onPressed: () => setState(
                    () => selectedGender = Gender.male,
                  ),
                  child: Iconcontect(
                    iconData: FontAwesomeIcons.mars,
                    titel: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: ReusbalCard(
                  selected: selectedGender == Gender.female ? true : false,
                  onPressed: () => setState(
                    () => selectedGender = Gender.female,
                  ),
                  child: Iconcontect(
                    iconData: FontAwesomeIcons.venus,
                    titel: "FEMALE",
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusbalCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                      data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: kBottumcontainerColour,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 16,
                          )),
                      child: Slider(
                          value: height,
                          min: 10,
                          max: 310,
                          onChanged: (newval) {
                            setState(() {
                              height = newval;
                            });
                          }))
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusbalCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            "Kg",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                                iconData: Icons.remove,
                                onPressed: () => setState(
                                      () => weight--,
                                    )),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                                iconData: Icons.add,
                                onPressed: () => setState(
                                      () => weight++,
                                    ))
                          ])
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusbalCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            "yrs",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                                iconData: Icons.remove,
                                onPressed: () => setState(
                                      () => age--,
                                    )),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                                iconData: Icons.add,
                                onPressed: () => setState(
                                      () => age++,
                                    ))
                          ])
                    ],
                  ),
                ),
              ),
            ]),
          ),
          RawMaterialButton(
            onPressed: () => _goTOResultScreen(),
            child: Text(
              "CALCULER",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            fillColor: kBottumcontainerColour,
            constraints: BoxConstraints.tightFor(
              width: double.infinity,
              height: 56,
            ),
          ),
        ],
      ),
    );
  }
}
