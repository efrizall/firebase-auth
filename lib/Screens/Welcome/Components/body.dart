import 'package:flutter/material.dart';
import 'package:flutter_auth/Components/rounded_button.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/Components/background.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Welcome To Edu",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: kPrimaryColor),
        ),
        SizedBox(height: size.height * 0.04),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.5,
        ),
        SizedBox(height: size.height * 0.05),
        RoundedButton(
          text: "Login",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        RoundedButton(
          text: "Sign Up",
          color: kPrimaryLightColor,
          textColor: kPrimaryColor,
          press: () {},
        )
      ]),
    ));
  }
}
