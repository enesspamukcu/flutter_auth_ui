import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  const  RoundedPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true,
        decoration: InputDecoration(
          labelText: 'Your Password',
          prefixIcon:  Icon(Icons.lock,color: kPrimaryColor,),
          suffixIcon:  Icon(Icons.visibility,color: kPrimaryColor),
          border: InputBorder.none,
        ),
      );
  }
}
