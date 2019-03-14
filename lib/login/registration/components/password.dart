import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput(this.controller);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Password (8+)'
      ),
      validator: (input) {
        // TODO fix password validation
        if (input.length < 8) {
          return 'Please enter a password with at least 8 characters';
        }
      },
    );
  }
}

class PasswordConfirmation extends StatelessWidget {
  PasswordConfirmation(this.controller);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Confirm Password'
      ),
      obscureText: true,
      validator: (input) {
        if (input != controller.text) {
          return 'Passwords don\'t match';
        }
      },
    );
  }
}