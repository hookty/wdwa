
import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
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
          Text('Resume:'),
          Text('Name: John Doe'),
          Text('Phone: 123-456-7890'),
          Text('Experience: 5 years'),
        ],
      ),
    );
  }
}