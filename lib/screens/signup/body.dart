import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/password_field.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/components/rounded_input_field.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/screens/Login/components/text_field.dart';
import 'package:flutter_auth_ui/screens/Login/login_screen.dart';
import 'package:flutter_auth_ui/screens/signup/components/background.dart';
import 'package:flutter_auth_ui/screens/signup/components/social_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
          ),
          const TextFieldContainer(child: RoundedInputField()),
          const TextFieldContainer(child: RoundedPasswordField()),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(text: 'SIGN UP ', press: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an Account ?',
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen())),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kPrimaryColor),
                  )),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'OR',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcons(icon: 'facebook', press: () {},),
              SocialIcons(icon: 'twitter', press: () {}),
              SocialIcons(icon: 'google-plus', press: () {}),
            ],
          )
        ],
      )),
    );
  }
}
