import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import '../registration.dart';
import '../../../app/home/home.dart';

final _log = Logger('submit_registration_button');

class SubmitRegistrationButton extends StatelessWidget {
  SubmitRegistrationButton(this.formKey, this.callback);
  GlobalKey<FormState> formKey;
  Function callback;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: const Key('submit_registration'),
      child: const Text('Done, Get Started!'),
      onPressed: () {
        callback();
        _log.info('Registration Submitted');
        Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
      },
    );
  }
}