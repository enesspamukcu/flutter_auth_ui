import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Your Email',
        prefixIcon: Icon(Icons.person,color: kPrimaryColor),
        border: InputBorder.none,
      ),
    );
  }
}
