import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/text_styles.dart';

class CustomHome extends StatelessWidget {
  final String text;
  final double value;
  const CustomHome({
    required this.value,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 179,
          height: 227,
          child: Card(
            color: AppColors.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    text,
                    style: AppTextStyles.subHeadingStyle,
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      LinearProgressIndicator(
                        value: value,
                        minHeight: 17,
                        backgroundColor: AppColors.progressBar,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.senaryTextColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      const Positioned(
                        left: 0, 
                        top: 0,
                        child: Icon(
                          FontAwesomeIcons.crown,
                          color: AppColors.iconCron,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
        const SizedBox(
          width: 179,
          height: 227,
          child: Card(
            color: AppColors.cardColor,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Center(
                  child: Icon(
                    FontAwesomeIcons.lock,
                    color: AppColors.secondaryTextColor,
                    size: 50,
                  ),
                ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
