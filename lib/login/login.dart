import 'package:flutter/material.dart';
import 'components/login_image.dart';
import 'components/register_button.dart';
import 'components/start_guest.dart';
import 'components/about_button.dart';
import 'components/policies_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            LoginImage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RegisterButton(),
                StartAsGuestButton(),
                Container(padding: EdgeInsets.all(16),),
                AboutButton(),
                PoliciesButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
