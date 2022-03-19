import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/already_have_account_check.dart';
import 'package:flutter_auth_ui/components/password_field.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/components/rounded_input_field.dart';
import 'package:flutter_auth_ui/screens/Login/components/background.dart';
import 'package:flutter_auth_ui/screens/Login/components/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const TextFieldContainer(child:  RoundedInputField()),
            const TextFieldContainer(child:  RoundedPasswordField()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(text: 'LOGIN',press: (){}),
            SizedBox(height: size.height*0.03,),
            const AlreadyHaveAccountCheck(),
          ],
        ),
      ),
    );
  }
}


