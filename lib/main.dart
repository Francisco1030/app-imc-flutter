import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  )); 
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: _colorFromHex("#1C1C1C"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}