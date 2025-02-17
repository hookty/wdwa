
import 'package:flutter/material.dart';

class BCard extends StatefulWidget {
  const BCard({Key? key}) : super(key: key);

  @override
  _BCardState createState() => _BCardState();
}

class _BCardState extends State<BCard> {
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
          Text('Business Card:'),
          Text('Name: John Doe'),
          Text('Phone: 123-456-7890'),
          Text('Profession: Developer'),
        ],
      ),
    );
  }
}
