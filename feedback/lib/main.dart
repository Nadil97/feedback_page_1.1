import 'package:feedback/Screens/feedback.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  var primarySwatch;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quakka',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const feedback(title: "flutter home"),
    );
  }
}
