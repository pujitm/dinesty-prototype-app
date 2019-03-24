import 'package:dinesty_proto/info/policies/policies.dart';
import 'package:flutter/material.dart';
import '../registration.dart';

class LegalConfirmation extends StatefulWidget {
  @override
  _LegalConfirmationState createState() => _LegalConfirmationState();
}

class _LegalConfirmationState extends State<LegalConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          key: const Key('legal_checkbox'),
          value: RegistrationPage.legalConfirmation,
          onChanged: (flag) {
            RegistrationPage.legalConfirmation = flag;
            setState(() {});
          },
        ),
        FlatButton(
          child: const Text(
            'I have read and Agree to the Terms & Policies',
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 12),
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (c) => PoliciesPage())),
        ),
      ],
    );
  }
}
