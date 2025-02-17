
import 'package:flutter/material.dart';

import 'link.dart';

class Experience {
  String jobTitle;
  String company;
  String dateFrom;
  String dateTo;
  String location;
  String description;


  // Each "prior position" should consist of job title, company, dates of employment, location, and a brief description.
  Experience({
    required this.jobTitle,
    required this.company,
    required this.dateFrom,
    required this.dateTo,
    required this.location,
    required this.description,
  });
}

class Resume extends StatelessWidget {

   // Default card:
  final Map<String, String> _defaultCard = {
    'photo': 'assets/photo.jpg',
    'name': 'Tristan Hook',
    'title': 'Software Engineer',
    'phone': '123-456-7890',
    'url': 'captn-hook.github.io',
    'email': 'hookt@oregonstate.edu',
  };

  final List<Experience> _experience = [
    Experience(
      jobTitle: 'Software Engineer',
      company: 'Google',
      dateFrom: 'Jan 2020',
      dateTo: 'Present',
      location: 'Mountain View, CA',
      description: 'Worked on the Flutter team to develop the next generation of mobile applications.',
    ),
    Experience(
      jobTitle: 'So0ftware Engineer',
      company: 'Facebook',
      dateFrom: 'Jan 2018',
      dateTo: 'Dec 2019',
      location: 'Menlo Park, CA',
      description: 'Developed new features for the Facebook app and website.',
    ),
    Experience(
      jobTitle: 'Software Egneer',
      company: 'Amazon',
      dateFrom: 'Jan 2016',
      dateTo: 'Dec 2017',
      location: 'Seattle, WA',
      description: 'Worked on the AWS team to build cloud services for developers.',
    ),
    Experience(
      jobTitle: 'Softerer',
      company: 'Microsoft',
      dateFrom: 'Jan 2014',
      dateTo: 'Dec 2015',
      location: 'Redmond, WA',
      description: 'Developed Windows applications and services.',
    ),
    Experience(
      jobTitle: 'Meningitis',
      company: 'Apple',
      dateFrom: 'Jan 2012',
      dateTo: 'Dec 2013',
      location: 'Cupertino, CA',
      description: 'Worked on the iOS team to build new features for the iPhone and iPad.',
    ),
    Experience(
      jobTitle: 'Siftware Engineer',
      company: 'IBM',
      dateFrom: 'Jan 2010',
      dateTo: 'Dec 2011',
      location: 'Armonk, NY',
      description: 'Developed AlphaGo, the first computer program to defeat a world champion Go player.',
    ),
    Experience(
      jobTitle: 'Hardware Engineer',
      company: 'Intel',
      dateFrom: 'Jan 2008',
      dateTo: 'Dec 2009',
      location: 'Santa Clara, CA',
      description: 'Worked on the Intel Core i7 processor architecture.',
    ),
    Experience(
      jobTitle: 'Space Engineer',
      company: 'Oracle',
      dateFrom: 'Jan 2006',
      dateTo: 'Dec 2007',
      location: 'Redwood City, CA',
      description: 'Developed the Oracle Database Management System.',
    ),
    Experience(
      jobTitle: 'Cool Engineer',
      company: 'Cisco',
      dateFrom: 'Jan 2004',
      dateTo: 'Dec 2005',
      location: 'San Jose, CA',
      description: 'Founded the Cisco Networking Academy to train IT professionals.',
    ),
    Experience(
      jobTitle: 'Software Boftware',
      company: 'HP',
      dateFrom: 'Jan 2002',
      dateTo: 'Dec 2003',
      location: 'Palo Alto, CA',
      description: 'Developed the HP LaserJet printer firmware.',
    ),
    Experience(
      jobTitle: 'Firmware Engineer',
      company: 'Dell',
      dateFrom: 'Jan 2000',
      dateTo: 'Dec 2001',
      location: 'Round Rock, TX',
      description: 'Worked on the Dell Inspiron laptop design team.',
    ),
    Experience(
      jobTitle: 'Semi-Software Engineer',
      company: 'Texas Instruments',
      dateFrom: 'Jan 1998',
      dateTo: 'Dec 1999',
      location: 'Dallas, TX',
      description: 'Developed the TI-83 graphing calculator software.',
    ),
    Experience(
      jobTitle: 'Software Semi-Engineer',
      company: 'US Army',
      dateFrom: 'Jan 1996',
      dateTo: 'Dec 1997',
      location: 'Fort Hood, TX',
      description: 'Developed the Army Knowledge Online portal.',
    ),
    Experience(
      jobTitle: 'Deez Nuts',
      company: 'NASA',
      dateFrom: 'Jan 1994',
      dateTo: 'Dec 1995',
      location: 'Houston, TX',
      description: 'Worked on the Mars Rover mission control software.',
    )
  ];

  Widget seperator() {
    return Padding(padding: EdgeInsets.all(10),
      child: Divider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }

  Widget experienceWidget(Experience experience) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(experience.jobTitle, style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(experience.company, style: TextStyle(fontSize: 12, color: Colors.black)),
                      Text(' | ', style: TextStyle(fontSize: 12, color: Colors.black)),
                      Text('${experience.dateFrom} - ${experience.dateTo}', style: TextStyle(fontSize: 12, color: Colors.black)),
                      Text(' | ', style: TextStyle(fontSize: 12, color: Colors.black)),
                      Text(experience.location, style: TextStyle(fontSize: 12, color: Colors.black)),
                    ]
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(experience.description, style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              ]
            )
          ),
          seperator(),
        ]
      )
    );
  }

  Widget defCard(String name, String email, String url) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
        child: 
        Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(name, style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Link(email, type: 'email', style: TextStyle(fontSize: 16, color: Colors.blueGrey, decoration: TextDecoration.underline)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Link(url, type: 'url', style: TextStyle(fontSize: 16, color: Colors.blueGrey, decoration: TextDecoration.underline)),
              ),
            ]
          )
        )
      );
    }

  // The Resume should display your name, contact details and other basic resume components. Most importantly, it should display a long list of prior work experience.
  // You should be able to scroll the screen up and down to see more content.
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        defCard(_defaultCard['name'] ?? '', _defaultCard['email'] ?? '', _defaultCard['url'] ?? ''),
        seperator(),
        for (var experience in _experience) experienceWidget(experience),
      ],
    );
  }
}
    