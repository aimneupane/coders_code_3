import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _LoginData {
  String name = "";
  String password = "";
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();
  _LoginData _data = _LoginData();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Image.asset(
            "images/face.png",
            color: Colors.green,
            width: 90.0,
            height: 90.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  gapPadding: 3.3,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter name";
                } else {
                  _data.name = value;
                  print("Data:${_data.name}");
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(10.0))),
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter password";
                } else {
                  _data.password = value;
                  print("Data:${_data.password}");
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    setState(() {
                      _data.name = _data.name;
                    });
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("all is good"),
                    ));
                  }
                },
                child: Text("Submit"),
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.reset();
                    setState(() {
                      _data.name = "";
                    });
                  }
                },
                child: Text("clear"),
              )
            ],
          ),
          Center(
              child: _data.name.isEmpty
                  ? Text("")
                  : Text("Welcome ${_data.name}")),
        ],
      ),
    );
  }
}
