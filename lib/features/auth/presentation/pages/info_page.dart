import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/gradient_button.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/label_dropdown_menu.dart';
import '../widgets/app_text_field.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late final TextEditingController _genderController;

  @override
  void initState() {
    super.initState();
    _genderController = TextEditingController();
  }

  @override
  dispose() {
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesInfo),
              const SizedBox(height: 24),
              Text(
                "Let's complete your profile",
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'It will help us to know more about you!',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              LabelDropdownMenu(
                label: '',
                entries: [
                  const AppMenuItem(label: 'Male', value: 'male'),
                  const AppMenuItem(label: 'Female', value: 'female'),
                ],
                hintText: 'Choose Gender',
                isInitialSelection: false,
                controller: _genderController,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                onSelected: (value) {},
              ),
              const SizedBox(height: 16),
              const AppTextField(
                prefixIcon: Icon(Icons.calendar_today),
                hint: 'Date of Birth',
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: AppTextField(
                      prefixIcon: Icon(Icons.monitor_weight),
                      hint: 'Your Weight',
                    ),
                  ),
                  const SizedBox(width: 12),
                  _buildUnitButton('KG'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: AppTextField(
                      prefixIcon: Icon(Icons.height),
                      hint: 'Your Height',
                    ),
                  ),
                  const SizedBox(width: 12),
                  _buildUnitButton('CM'),
                ],
              ),
              const SizedBox(height: 32),
              GradientButton(label: 'Next', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUnitButton(String unit) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFE0C3FC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(unit, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
