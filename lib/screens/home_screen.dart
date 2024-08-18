import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/widgets/custom_card.dart';
import 'package:project_3/core/widgets/custom_heading.dart';
import 'package:project_3/screens/unit_screen.dart'; // Ensure this imports your VerbalSkillsScreen

import '../core/constants/icons.dart';
import '../core/constants/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.fire, height: 25),
                const SizedBox(width: 10),
                const Text(
                  '3',
                  style: AppTextStyles.fireStyle,
                ),
                const SizedBox(width: 20),
                const Icon(
                  FontAwesomeIcons.coins,
                  color: AppColors.quaternaryTextColor,
                  size: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  '1432 XP',
                  style: AppTextStyles.moneyStyle,
                ),
                const SizedBox(width: 20),
                const Icon(
                  FontAwesomeIcons.heartCirclePlus,
                  color: AppColors.challengesButtonColor,
                  size: 20,
                ),
                const SizedBox(width: 10),
                const Icon(
                  FontAwesomeIcons.infinity,
                  color: AppColors.challengesButtonColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                const CustomHeading(
                  text: 'Logical reasoning',
                  score: '18/40',
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnitScreen(),
                      ),
                    );
                  },
                  child: const CustomHome(
                    text: 'Unit 1',
                    value: 0.4,
                  ),
                ),
                const SizedBox(height: 40),
                const CustomHeading(
                  text: 'Artistic thinking',
                  score: '35/40',
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnitScreen(),
                      ),
                    );
                  },
                  child: const CustomHome(
                    text: 'Unit 1',
                    value: 0.8,
                  ),
                ),
                const SizedBox(height: 40),
                const CustomHeading(
                  text: 'Verbal skills',
                  score: '3/40',
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnitScreen(),
                      ),
                    );
                  },
                  child: const CustomHome(
                    text: 'Unit 1',
                    value: 0.2,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
