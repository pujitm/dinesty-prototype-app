import 'package:flutter/material.dart';
import 'components/login_image.dart';
import 'components/register_button.dart';
import 'components/start_guest.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LoginImage(),
          RegisterButton(),
          StartAsGuestButton(),
        ],
      ),
    );
  }
}