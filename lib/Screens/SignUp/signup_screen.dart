import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/SignUp/Components/body.dart';

class SignupScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}