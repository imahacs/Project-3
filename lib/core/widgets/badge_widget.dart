import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_3/core/constants/colors.dart';

class BadgeWidget extends StatelessWidget {
  final String title;
  final String number;
  final Widget image;
  const BadgeWidget({
    required this.title,
    required this.number,
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.progressBar,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.teal.shade100,
                    child: image
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.crown,
                      color: AppColors.iconCron,
                      size: 30,
                    ),
                    Text(
                      number,
                      style: const TextStyle(
                        color: Colors.black, 
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
