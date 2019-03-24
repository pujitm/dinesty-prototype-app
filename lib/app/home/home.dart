import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/qr_scanner.dart';
import 'components/restaurant_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          QrScanner(),
          ListView(
            children: <Widget>[
              RestaurantTile(name: 'hi',)
            ],
          )
        ],
      ),
    );
  }
}