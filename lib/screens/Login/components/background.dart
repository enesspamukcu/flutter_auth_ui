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
            'assets/images/main_top.png',
            width: size.width * 0.35,
          )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: size.width * 0.4,
              )),
          child,
        ],
      ),
    );
  }
}
