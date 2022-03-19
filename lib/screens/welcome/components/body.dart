import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/screens/Login/login_screen.dart';
import 'package:flutter_auth_ui/screens/signup/sign_up.dart';
import 'package:flutter_auth_ui/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: 'LOGIN',
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }),
            RoundedButton(
                text: 'SIGN UP',
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
