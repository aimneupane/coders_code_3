import 'package:flutter/material.dart';

class CustomPlanetWeight extends StatefulWidget {
  @override
  _CustomPlanetWeightState createState() => _CustomPlanetWeightState();
}

class _CustomPlanetWeightState extends State<CustomPlanetWeight> {
  TextEditingController _weightController = TextEditingController();

  int radioValue = 0;
  double _finalResult = 0.0;
  String _formattedText = "";

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      print(radioValue);
      switch (radioValue) {
        case 0:
          _finalResult = calculateResult(_weightController.text, 0.06);
          _formattedText =
              "your weight on pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateResult(_weightController.text, 0.38);
          _formattedText =
              "your weight on mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateResult(_weightController.text, 0.91);
          _formattedText =
              "your weight on venus is ${_finalResult.toStringAsFixed(1)}";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.green[300],
        Colors.green[50],
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Image.asset(
            "images/planet.png",
            color: Colors.green,
            width: 90.0,
            height: 90.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Your Weight on Earth",
                hintText: "in pounds",
                icon: Icon(
                  Icons.person_outline,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio<int>(
                  activeColor: Colors.pinkAccent,
                  value: 0,
                  groupValue: radioValue,
                  onChanged: handleRadioValueChanged,
                ),
                Text(
                  "pluto",
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                Radio<int>(
                  activeColor: Colors.purpleAccent,
                  value: 1,
                  groupValue: radioValue,
                  onChanged: handleRadioValueChanged,
                ),
                Text(
                  "mars",
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                Radio<int>(
                  activeColor: Colors.redAccent,
                  value: 2,
                  groupValue: radioValue,
                  onChanged: handleRadioValueChanged,
                ),
                Text(
                  "venus",
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              _weightController.text.isEmpty
                  ? "Please enter weight"
                  : _formattedText,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  double calculateResult(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("wrong");
    }
    return int.parse("180") * 0.38;
  }
}
