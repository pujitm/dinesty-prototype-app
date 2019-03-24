import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  /// The Text Editing Controller for the form field
  final TextEditingController textController;
  NameInput(this.textController);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        labelText: 'Name (First Last)' // TODO ask about change to hintText
      ),
      validator: (val) {
        if (val.trim().isEmpty) {
          return 'Please enter a name';
        }
      },
    );
  }
}
