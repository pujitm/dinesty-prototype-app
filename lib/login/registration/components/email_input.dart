import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EmailInput extends StatelessWidget {
  EmailInput(this.controller);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (input) {
        if (input.trim().isEmpty || !isEmail(input)) {
          return 'Please enter a valid email';
        }
      },
    );
  }
}