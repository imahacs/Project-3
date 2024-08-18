import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/text_styles.dart';

class CustomHeading extends StatelessWidget {
  final String text;
  final String score;
  const CustomHeading({
    required this.score,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyles.headingStyle,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.crown,
          color: AppColors.senaryTextColor,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          score,
          style: AppTextStyles.bodyStyle,
        ),
      ],
    );
  }
}
