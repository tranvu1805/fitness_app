import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/utils/widgets/gradient_button.dart';
import 'package:fitness_app/features/auth/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Text(
                'Hey there,',
                style: textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'Create an Account',
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const AppTextField(
                prefixIcon: Icon(Icons.person_outline),
                hint: 'First Name',
              ),
              const SizedBox(height: 16),
              const AppTextField(
                prefixIcon: Icon(Icons.person_outline),
                hint: 'Last Name',
              ),
              const SizedBox(height: 16),
              const AppTextField(
                prefixIcon: Icon(Icons.email_outlined),
                hint: 'Email',
              ),
              const SizedBox(height: 16),
              AppTextField(
                prefixIcon: const Icon(Icons.lock_outline),
                hint: 'Password',
                obscure: isPasswordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    isPasswordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  const Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'By continuing you accept our ',
                        children: [
                          TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Term of Use',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              GradientButton(label: 'Register', onPressed: () {}),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or',
                      style: textTheme.titleMedium?.copyWith(fontSize: 14),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton('G'),
                  const SizedBox(width: 16),
                  _buildSocialButton('f'),
                ],
              ),
              const SizedBox(height: 24),
              const Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildSocialButton(String label) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[100],
      ),
      child: Center(
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
