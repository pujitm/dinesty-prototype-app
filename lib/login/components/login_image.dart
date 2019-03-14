import 'package:flutter/material.dart';

const loginImagePath = 'assets/login.png';

class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: const AssetImage(loginImagePath), fit: BoxFit.fitWidth),
      ),
    );
  }
}
