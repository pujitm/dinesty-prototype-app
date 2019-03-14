import 'package:flutter/material.dart';

class PhoneNumberInput extends StatelessWidget {
  PhoneNumberInput(this.controller);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Phone Number'
      ),
      keyboardType: TextInputType.phone,
      validator: (input) {
        // TODO implement better phone validation
        if (input.length != 10) {
          return 'Please enter a 10-digit phone number';
        }
      },
    );
  }
}