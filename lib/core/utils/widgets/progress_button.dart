import 'dart:math';

import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class ProgressButton extends StatelessWidget {
  const ProgressButton({
    super.key,
    this.startAngle = -pi / 2,
    this.sweepAngle = pi / 2,
    required this.onPressed,
    this.icon = Icons.arrow_forward_ios_outlined,
  });

  final double startAngle;
  final double sweepAngle;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CurvePaint(startAngle: startAngle, sweepAngle: sweepAngle),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFF8EC5FC), Color(0xFFE0C3FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}

class CurvePaint extends CustomPainter {
  const CurvePaint({this.startAngle = -pi / 2, this.sweepAngle = pi / 2});

  final double startAngle;
  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final myPaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..shader = AppColors.blueLinear.createShader(rect);
    canvas.drawArc(rect, startAngle, sweepAngle, false, myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
