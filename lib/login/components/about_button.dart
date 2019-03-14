import 'package:flutter/material.dart';
import 'package:dinesty_proto/info/about/about.dart';

class AboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: const Key('about_button'),
      child: const Text('What is this | About'),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (c) => AboutPage())),
    );
  }
}
