import 'package:flutter/material.dart';

import 'link.dart';

class BCard extends StatelessWidget {
  
  // Default card:
  final Map<String, String> _defaultCard = {
    'photo': 'assets/photo.jpg',
    'name': 'Tristan Hook',
    'title': 'Software Engineer',
    'phone': '123-456-7890',
    'url': 'captn-hook.github.io',
    'email': 'hookt@oregonstate.edu',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? Column(
                  children: _buildCardContent(orientation),
                )
              : Row(
                  children: [
                    Image.asset(_defaultCard['photo'] ?? ''),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildCardContent(orientation),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }

  List<Widget> _buildCardContent(Orientation orientation) {
    return [
      if (orientation == Orientation.portrait)
        Image.asset(_defaultCard['photo'] ?? ''),
      Padding(padding: EdgeInsets.all(10), child: Column(children: [
        Text(_defaultCard['name'] ?? '', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
        Text(_defaultCard['title'] ?? '', style: TextStyle(fontSize: 18, color: Colors.black)),
        Link(_defaultCard['phone'] ?? '', type: 'phone', style: TextStyle(fontSize: 18, color: Colors.blueGrey)),
      ]),
      ),
      if (orientation == Orientation.landscape)
        Padding(padding: EdgeInsets.all(10), child:
          Column(
            children: [
              Link(_defaultCard['url'] ?? '', type: 'url', style: TextStyle(fontSize: 14, color: Colors.blueGrey, decoration: TextDecoration.underline)),
              Link(_defaultCard['email'] ?? '', type: 'email', style: TextStyle(fontSize: 14, color: Colors.blueGrey, decoration: TextDecoration.underline)),
            ],
          )
        )
      else
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Link(_defaultCard['url'] ?? '', type: 'url', style: TextStyle(fontSize: 14, color: Colors.blueGrey, decoration: TextDecoration.underline)),
            Link(_defaultCard['email'] ?? '', type: 'email', style: TextStyle(fontSize: 14, color: Colors.blueGrey, decoration: TextDecoration.underline)),
          ],
        ),
      
    ];
  }
}