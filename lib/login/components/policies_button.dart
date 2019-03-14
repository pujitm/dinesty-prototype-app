import 'package:flutter/material.dart';
import 'package:dinesty_proto/info/policies/policies.dart';

class PoliciesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: const Key('policies_button'),
      child: const Text('Terms & Conditions'),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (c) => PoliciesPage())),
    );
  }
}