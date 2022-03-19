import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  String icon;
  Function press;
   SocialIcons({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5),
          shape: BoxShape.circle,
        ),
          child: SvgPicture.asset('assets/icons/$icon.svg',
                height: 20,
                width:20,
                color: kPrimaryColor,
          ),
        ),
    );
  }
}
