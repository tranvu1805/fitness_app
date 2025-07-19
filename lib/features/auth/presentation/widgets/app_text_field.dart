import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String hint;
  final bool obscure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.grayTwo),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        filled: true,
        fillColor: AppColors.borderColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.borderColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
