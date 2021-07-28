import 'package:flutter/material.dart';
import 'package:flutter_auth/Components/already_have_an_account.dart';
import 'package:flutter_auth/Components/rounded_button.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/SignUp/signup_screen.dart';
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
          "Learn UI Login",
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
          text: "Masuk dengan e-mail",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        RoundedButton(
          text: "Masuk Anonymous",
          color: kPrimaryLightColor,
          textColor: kPrimaryColor,
          press: () {},
        ),
        SizedBox(height: 10,),
        AlreadyHaveAnAccount(press: (){
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
        },)
      ]),
    ));
  }
}
