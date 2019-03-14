import 'package:flutter/material.dart';
import 'package:dinesty_proto/info/policies/policies.dart';

class PoliciesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: const Key('policies_button'),
      child: const Text(
        'Terms & Conditions',
        style: const TextStyle(
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (c) => PoliciesPage())),
    );
  }
}
