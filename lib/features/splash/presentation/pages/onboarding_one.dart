import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/progress_button.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

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
              child: Image.asset(Assets.imagesOnboardingOne),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Track Your Goal', style: textTheme.titleMedium),
                const SizedBox(height: 12),
                Text(
                  'Don’t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
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
              child: ProgressButton(onPressed: () {}),
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
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width * 0.6,
      size.height * 1.1,
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
