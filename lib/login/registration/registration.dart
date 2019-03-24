import 'package:dinesty_proto/login/user_info.dart';
import 'package:flutter/material.dart';
import 'components/name_input.dart';
import 'components/email_input.dart';
import 'components/phone_number_input.dart';
import 'components/birthday_input.dart';
import 'components/password.dart';
import 'components/submit_button.dart';
import 'components/legal_confirmation.dart';

class RegistrationPage extends StatefulWidget {
  static bool legalConfirmation = false;

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController(),
      email = TextEditingController(),
      phoneNumber = TextEditingController(),
      password = TextEditingController();

  DateTime _date;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating a New Account'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NameInput(name),
                  EmailInput(email),
                  PhoneNumberInput(phoneNumber),
                  BirthdayInput(_date),
                  PasswordInput(password),
                  PasswordConfirmation(password),
                  LegalConfirmation(),
                  SubmitRegistrationButton(_formKey, submitCallback),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  submitCallback() {
    var userInfo = UserInfo();
    userInfo.birthday = _date;
    userInfo.email = email.text;
    userInfo.name = name.text;
    userInfo.phoneNumber = phoneNumber.text;
  }
}
