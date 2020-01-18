import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReuseIconcard extends StatelessWidget {
  ReuseIconcard({@required this.icon, this.gender});
  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
        )
      ],
    );
  }
}
