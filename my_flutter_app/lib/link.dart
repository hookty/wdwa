import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Link extends StatelessWidget {
  const Link(this.text, {super.key, required this.type, required this.style});

  final String text;
  final String type; // 'phone', 'url', or 'email'
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        switch (type) {
          case 'phone':
            final Uri phoneUri = Uri.parse('sms:$text');
            if (!await launchUrl(phoneUri)) {
              throw Exception('Could not launch $phoneUri');
            }
            break;
          case 'url':
            final Uri urlUri = Uri.parse('https://$text');
            if (!await launchUrl(urlUri)) {
              throw Exception('Could not launch $urlUri');
            }
            break;
          case 'email':
            final Uri emailUri = Uri.parse('mailto:$text');
            if (!await launchUrl(emailUri)) {
              throw Exception('Could not launch $emailUri');
            }
            break;
          default:
            throw Exception('Invalid type: $type');
        }
      },
      child: Text(text, style: style),
    );
  }
}