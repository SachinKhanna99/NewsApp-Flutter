import 'package:flutter/material.dart';
import '../constants.dart';

class BackButtonCustomCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = kButtonPrimaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(size.width * 0.93, size.height * 0.97);
    path.quadraticBezierTo(size.width * 0.28, size.height * 0.97,
        size.width * 0.07, size.height * 0.97);
    path.quadraticBezierTo(
        size.width * 0.01, size.height * 0.96, 0, size.height * 0.90);
    path.lineTo(size.width * 0.10, size.height * 0.07);
    path.quadraticBezierTo(
        size.width * 0.11, size.height * 0.00, size.width * 0.17, 0);
    path.cubicTo(size.width * 0.36, size.height * 0.03, size.width * 0.74,
        size.height * 0.07, size.width * 0.93, size.height * 0.10);
    path.quadraticBezierTo(
        size.width * 0.99, size.height * 0.11, size.width, size.height * 0.17);
    path.quadraticBezierTo(
        size.width, size.height * 0.72, size.width, size.height * 0.90);
    path.quadraticBezierTo(size.width * 1.00, size.height * 0.96,
        size.width * 0.93, size.height * 0.97);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
