import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentageIndicatorWidget extends StatelessWidget {
  const PercentageIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 5.0,
            spreadRadius: 0,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(120),
      ),
      height: 220,
      width: 220,
      child: CircularPercentIndicator(
        radius: 95.0,
        lineWidth: 7.0,
        percent: 0.7,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Your Goal',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Text(
              "75%",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            Text(
              'Today',
              style: TextStyle(fontSize: 15, color: Colors.green),
            )
          ],
        ),
        progressColor: Colors.green,
      ),
    );
  }
}
