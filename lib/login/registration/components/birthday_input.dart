import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class BirthdayInput extends StatelessWidget {
  BirthdayInput(this.date);
  DateTime date;
  @override
  Widget build(BuildContext context) {
    return DateTimePickerFormField(
      format: DateFormat('yyyy-MM-dd'),
      decoration: InputDecoration(
        labelText: 'Birthday'
      ),
      inputType: InputType.date,
      onChanged: (dt) => date = dt,
    );
  }
}