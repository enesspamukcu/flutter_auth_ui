import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/screens/signup/sign_up.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  const AlreadyHaveAccountCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen()));
            },
            child: const Text(
              'Sign Up',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
            )),
      ],
    );
  }
}
