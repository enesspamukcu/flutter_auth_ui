import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
              child: Image.asset(
            'assets/images/signup_top.png',
            width: size.width * 0.30,
          )),
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: size.width * 0.2,
              )),
          child,
        ],
      ),
    );
  }
}
