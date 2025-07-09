import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Fitness',
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: ShaderMask(
                    shaderCallback:
                        (bounds) => AppColors.logoLinear.createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      'X',
                      style: textTheme.titleSmall?.copyWith(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Everybody Can Train',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: AppColors.blueLinear,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: PrimaryButton(onPressed: () {}, title: 'Get Started'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
