import 'package:flutter/material.dart';

import '../constants.dart';


class ButtonCustomCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = kButtonPrimaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(size.width * 0.95, size.height);
    path.lineTo(size.width * 0.07, size.height);
    path.quadraticBezierTo(
        size.width * -0.00, size.height * 1.02, 0, size.height * 0.87);
    path.quadraticBezierTo(size.width * 0.02, size.height * 0.65,
        size.width * 0.12, size.height * 0.16);
    path.quadraticBezierTo(
        size.width * 0.15, size.height * 0.01, size.width * 0.18, 0);
    path.cubicTo(size.width * 0.27, size.height * -0.03, size.width * 0.79,
        size.height * 0.10, size.width * 0.95, size.height * 0.13);
    path.quadraticBezierTo(
        size.width * 1.00, size.height * 0.15, size.width, size.height * 0.29);
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.88,
        size.width * 0.98, size.height * 0.93);
    path.quadraticBezierTo(
        size.width * 0.97, size.height * 1.00, size.width * 0.95, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
