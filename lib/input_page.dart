import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'result_page.dart';

const Color inActiveCardColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inActiveCardColor;
  Color femaleColor = inActiveCardColor;
  //1=male 2=female
  void updateColor(int genderType) {
    if (genderType == 1) {
      if (maleColor == inActiveCardColor) {
        maleColor = activeCardColor;
        femaleColor = inActiveCardColor;
      } else
        maleColor = inActiveCardColor;
    } else {
      if (femaleColor == inActiveCardColor) {
        femaleColor = activeCardColor;
        maleColor = inActiveCardColor;
      } else
        femaleColor = inActiveCardColor;
    }
  }

  int height = 180;
  int weight = 160;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleColor,
                      iconContent: ReuseIconcard(
                        icon: FontAwesomeIcons.mars,
                        gender: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      color: femaleColor,
                      iconContent: ReuseIconcard(
                        icon: FontAwesomeIcons.venus,
                        gender: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
                iconContent: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        Text(
                          "cm",
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: bottomContainerColor,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 200.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    iconContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("WEIGHT", style: labelTextStyle),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              fillColor: Color(0xFF4C4F5E),
                              elevation: 0.0,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                height: 45.0,
                                width: 46.0,
                              ),
                            ),
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              fillColor: Color(0xFF4C4F5E),
                              elevation: 0.0,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                height: 45.0,
                                width: 46.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    iconContent: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Age", style: labelTextStyle),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              fillColor: Color(0xFF4C4F5E),
                              elevation: 0.0,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                height: 45.0,
                                width: 46.0,
                              ),
                            ),
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              fillColor: Color(0xFF4C4F5E),
                              elevation: 0.0,
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                height: 45.0,
                                width: 46.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(),
                    ));
              },
              child: Container(
                color: Color(0xFFEB1555),
                height: 80.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Text(
                    'CALCULATE YOUR BMI',
                    textAlign: TextAlign.center,
                    style: largeTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
