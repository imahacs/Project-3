import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import 'package:project_3/core/constants/text_styles.dart';
import 'package:project_3/core/widgets/badge_widget.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: const Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Verbal skills', style: AppTextStyles.headingStyle),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.crown,
                  color: AppColors.senaryTextColor,
                  size: 20,
                ),
                SizedBox(width: 10),
                Text(
                  '3',
                  style: AppTextStyles.crownStyle,
                ),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.diamond,
                  color: AppColors.septenaryTextColor,
                  size: 20,
                ),
                SizedBox(width: 10),
                Text(
                  '213',
                  style: AppTextStyles.diamondStyle,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: 211,
                          height: 128,
                          child: Card(
                            borderOnForeground: true,
                            clipBehavior: Clip.antiAlias,
                            color: AppColors.cardColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                color: AppColors.progressBar,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Spacer(),
                                  const Text(
                                    'Unit 1',
                                    style: AppTextStyles.subHeadingStyle,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            LinearProgressIndicator(
                                              value: 0.4,
                                              minHeight: 17,
                                              backgroundColor:
                                                  AppColors.progressBar,
                                              valueColor:
                                                  const AlwaysStoppedAnimation<
                                                          Color>(
                                                      AppColors
                                                          .senaryTextColor),
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        '3/40',
                                        style: AppTextStyles.bodyStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -90,
                          left: 20,
                          child: SizedBox(
                            width: 150,
                            height: 130,
                            child: Image.asset(
                              AppImages.uniCorn1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 160,
                          left: 50,
                          child: BadgeWidget(
                            title: 'Intro',
                            number: '1',
                            image: Image.asset(
                              AppImages.handsPencil1,
                              fit: BoxFit.fill,
                              width: 50,
                              height: 30,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 310,
                          left: 0,
                          child: BadgeWidget(
                            title: 'Phrases',
                            number: '1',
                            image: Image.asset(
                              AppImages.handsBook,
                              fit: BoxFit.fill,
                              width: 50,
                              height: 40,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 310,
                          left: 120,
                          child: BadgeWidget(
                            title: 'Travel',
                            number: '1',
                            image: Image.asset(
                              AppImages.dayFlow,
                              fit: BoxFit.fill,
                              width: 50,
                              height: 40,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 460,
                          left: 50,
                          child: BadgeWidget(
                            title: '',
                            number: '',
                            image: Icon(
                              FontAwesomeIcons.lock,
                              color: AppColors.secondaryTextColor,
                              size: 30,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 590,
                          left: 0,
                          child: BadgeWidget(
                            title: '',
                            number: '',
                            image: Icon(
                              FontAwesomeIcons.lock,
                              color: AppColors.secondaryTextColor,
                              size: 30,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 590,
                          left: 120,
                          child: BadgeWidget(
                            title: '',
                            number: '',
                            image: Icon(
                              FontAwesomeIcons.lock,
                              color: AppColors.secondaryTextColor,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
