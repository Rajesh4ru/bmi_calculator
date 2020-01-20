import 'package:bmi_calculator/reusable_card.dart';
import "package:flutter/material.dart";

import 'constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(35.0),
              child: Text(
                "Your result",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              iconContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "NORMAL",
                    style: TextStyle(
                      color: Color(0xFF22DA77),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "22.1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Normal BMI range",
                        style: TextStyle(
                          color: Color(0xFF81828D),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "18.5-25kg/m2",
                        style: TextStyle(
                          //color: Color(),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "You have  a normal body"
                    ".Weight Good job! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //color: Color(),
                      fontSize: 25.0,
                      //fontWeight: FontWeight.w900,
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 80.0,
                        width: 300.0,
                        color: inActiveCardColor,
                        child: Center(
                          child: Text(
                            "Save Result",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Color(0xFFEB1555),
              height: 80.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 15.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  textAlign: TextAlign.center,
                  style: largeTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

