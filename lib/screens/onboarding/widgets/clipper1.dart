import 'package:flutter/material.dart';

class Clipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, size.height);
    // path.lineTo(size.width, size.height * .6);

    path.cubicTo(
      size.width * .3,
      size.height * .5,
      size.width * .6,
      size.height + 100,
      size.width,
      size.height * .9,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
