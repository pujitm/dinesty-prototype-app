import 'package:flutter/material.dart';
import 'components/name_input.dart';
import 'components/email_input.dart';
import 'components/phone_number_input.dart';
import 'components/birthday_input.dart';
import 'components/password.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController name = TextEditingController(),
      email = TextEditingController(),
      phoneNumber = TextEditingController(),
      password = TextEditingController();

  DateTime _date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating a New Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            NameInput(name),
            EmailInput(email),
            PhoneNumberInput(phoneNumber),
            BirthdayInput(_date),
            PasswordInput(password),
            PasswordConfirmation(password)
          ],
        ),
      ),


    );
  }
}
