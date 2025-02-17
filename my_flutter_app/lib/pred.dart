import 'package:flutter/material.dart';

class Prediction extends StatefulWidget {
  const Prediction({Key? key}) : super(key: key);

  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text('Prediction: You will have a great day!'),
          Text('Lucky Number: 7')
        ],
      ),
    );
  }
}