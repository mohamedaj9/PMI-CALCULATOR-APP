import 'package:bmi/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi/widgets/reusebal_card.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});

  String transletResult() {
    if (result > 0 && result < 18) return 'Under weight';
    if (result > 19 && result < 25) return 'Normal weight';
    if (result > 26 && result < 29)
      return 'Overweight';
    else
      return 'Obese';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculer"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Your Result",
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
              child: ReusbalCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 56,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    transletResult(),
                    style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )),
          castumButton(
            onPressed: () {},
            titel: "Re-calculet",
          )
        ],
      ),
    );
  }
}
