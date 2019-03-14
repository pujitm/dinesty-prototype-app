import 'package:flutter/material.dart';

const loginImagePath = 'assets/login.png';

class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(loginImagePath),
      fit: BoxFit.fitWidth,
    );
  }
}
