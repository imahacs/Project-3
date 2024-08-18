import 'package:flutter/material.dart';
import 'package:project_3/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  const CustomTextField({
    required this.labelText,
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: AppColors.secondaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.secondaryTextColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
