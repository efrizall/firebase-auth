import 'package:flutter/material.dart';
import 'package:flutter_auth/Components/already_have_an_account.dart';
import 'package:flutter_auth/Components/rounded_button.dart';
import 'package:flutter_auth/Components/rounded_password_field.dart';
import 'package:flutter_auth/Screens/Login/Components/background.dart';
import 'package:flutter_auth/Screens/Login/Components/rounded_input_field.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: kPrimaryColor),
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.4,
          ),
          RoundedInputField(
            hintText: "Your Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccount(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
