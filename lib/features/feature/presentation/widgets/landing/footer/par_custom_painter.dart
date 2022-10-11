import 'package:flutter/material.dart';

class ParCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0xffEEF1E6).withOpacity(.45)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2491667, size.height * 0.5700000);
    path0.lineTo(size.width * 0.7922167, size.height * 0.4997571);
    path0.lineTo(size.width * 0.8337500, size.height * 0.2136000);
    path0.lineTo(size.width * 0.2916667, size.height * 0.2857143);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
