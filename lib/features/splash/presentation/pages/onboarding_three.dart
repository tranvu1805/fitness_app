import 'dart:math';

import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/progress_button.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:flutter/material.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipPath(
            clipper: TopCurveClipper(),
            child: Container(
              padding: const EdgeInsets.only(top: 70, left: 90, right: 90),
              width: double.infinity,
              height: size.height * 0.5,
              decoration: const BoxDecoration(gradient: AppColors.blueLinear),
              child: Image.asset(Assets.imagesOnboardingThree),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Eat Well', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                Text(
                  'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
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
              child: ProgressButton(sweepAngle: 1.5 * pi, onPressed: () {}),
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
    path.lineTo(0, size.height * 0.4);
    path.cubicTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 1.2,
      size.width,
      size.height * 0.4,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
