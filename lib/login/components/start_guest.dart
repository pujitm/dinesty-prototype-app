import 'package:dinesty_proto/app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('start_guest');

class StartAsGuestButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: const Key('start_as_guest_button'),
      child: const Text('Start as Guest'),
      onPressed: () {
        _log.info('pressed start as guest button');
        Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
      },
    );
  }
}