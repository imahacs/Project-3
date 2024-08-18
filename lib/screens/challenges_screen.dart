import 'package:flutter/material.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import 'package:project_3/core/constants/string.dart';
import 'package:project_3/core/constants/text_styles.dart';
import 'package:project_3/core/widgets/reward_card.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Center(
          child: Text('Challenges', style: AppTextStyles.headingStyle),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      RewardCard(
                        image: Image.asset(
                          AppImages.group,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        title: 'Complete 1000 word streak',
                        description: 'Win 1000XP along with 300 diamonds.',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text('Achievements', style: AppTextStyles.headingStyle),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      RewardCard(
                        image: Image.asset(
                          AppImages.stuck,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        title: DummyText.loremTitle,
                        description: DummyText.loremIpsum,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      RewardCard(
                        image: Image.asset(
                          AppImages.plant,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        title: DummyText.loremTitle,
                        description: DummyText.loremIpsum,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      RewardCard(
                        image: Image.asset(
                          AppImages.basketball,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        title: DummyText.loremTitle,
                        description: DummyText.loremIpsum,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
