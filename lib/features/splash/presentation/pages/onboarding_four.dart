import 'dart:math';

import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/progress_button.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:flutter/material.dart';

class OnboardingFour extends StatelessWidget {
  const OnboardingFour({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: TopCurveClipper(),
                child: Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: AppColors.blueLinear,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 80,
                right: 80,
                child: Image.asset(
                  Assets.imagesOnboardingFour,
                  // width: 320,
                  // height: 260,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Improve Sleep  Quality', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                Text(
                  'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerRight,
              child: ProgressButton(sweepAngle: 2 * pi, onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.25);
    path.cubicTo(
      size.width * 0.1,
      0,
      size.width * 0.6,
      size.height * 0.9,
      size.width,
      size.height * 0.6,
    );
    // path.quadraticBezierTo(
    //   size.width * 0.75,
    //   size.height * 0.7,
    //   size.width,
    //   size.height * 0.3,
    // );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
