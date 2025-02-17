import 'package:flutter/material.dart';
import 'dart:math';

class Prediction extends StatefulWidget {
  
  // The Predictor should exhibit behavior similar to a "magic eight ball" and playfully predict whether or not you will get called back after an interview.
  // The Predictor screen should display a fun prompt, and a Text widget asking the user to tap for an answer.
  // The Text widget should be "tappable" and cause the screen to display a new random answer.
  // There should be eight possible answers, which are entirely up to you.

  final List<String> _predictions = [
    'Yaur',
    'Naur',
    'Yerp',
    'Nerp',
    'Nope',
    'Nah',
    'Yeah',
    'Yah'
  ];

  Prediction({super.key});

  @override
  PredictionButtonState createState() => PredictionButtonState();
}

class PredictionButtonState extends State<Prediction> {
  String buttonText = "Tap";

  void _updatePrediction() {
    setState(() {
      buttonText = widget._predictions[Random().nextInt(widget._predictions.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 100,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Text('Hold your question in your mind', style: TextStyle(fontSize: 24, color: Colors.black)),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TextButton(
              onPressed: _updatePrediction,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blueGrey),
                fixedSize: WidgetStateProperty.all(Size(200, 50)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
              child: Text(buttonText, style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}