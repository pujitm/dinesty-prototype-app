import 'package:flutter/material.dart';
import 'package:dinesty_proto/info/about/about.dart';

class AboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: const Key('about_button'),
      child: const Text(
        'What is this | About',
        style: const TextStyle(
          decoration: TextDecoration.underline, 
          fontSize: 12.0
        ),
      ),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (c) => AboutPage())),
    );
  }
}
