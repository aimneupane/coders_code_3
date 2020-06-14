import 'package:coderscode3/weight_planet/custom_planet.dart';
import 'package:flutter/material.dart';

class PlanetWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planet weight"),
        centerTitle: true,
      ),
      body: CustomPlanetWeight(),
    );
  }
}
