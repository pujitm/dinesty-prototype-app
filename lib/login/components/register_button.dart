import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import '../registration/registration.dart';

final Logger _log = Logger('register_button');

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: const Key('register_button'),
      child: const Text('Register'),
      onPressed: () {
        // _log.info('Pressed Register button');
        Navigator.push(context, MaterialPageRoute(builder: (c) => RegistrationPage()));
      },
    );
  }
}