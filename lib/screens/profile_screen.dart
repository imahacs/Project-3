import 'package:flutter/material.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import 'package:project_3/core/constants/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: const Center(
            child: Text('Profile', style: AppTextStyles.headingStyle),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nidhi Pandya', style: AppTextStyles.headingStyle),
                        Text('Nidhi12', style: AppTextStyles.subStyle),
                        Row(
                          children: [
                            Icon(Icons.history, size: 16),
                            SizedBox(width: 4),
                            Text('Joined March 2022',
                                style: AppTextStyles.subStyle),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: Image.asset(AppImages.ellipse).image,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: AppColors.appBarColor,
                  height: 20,
                ),
                ListTile(
                  hoverColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: AppColors.appBarColor,
                      width: 2,
                    ),
                  ),
                  title: const Text('Friends updates',
                      style: AppTextStyles.subStyle),
                  leading: const Icon(Icons.celebration,
                      size: 30, color: AppColors.quinaryTextColor),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Statistics', style: AppTextStyles.headingStyle),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ListTile(
                        hoverColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: AppColors.appBarColor,
                            width: 2,
                          ),
                        ),
                        title: const Text('3', style: AppTextStyles.subStyle),
                        subtitle: const Text('Day Streak',
                            style: AppTextStyles.subStyle),
                        leading: const Icon(Icons.fireplace_outlined,
                            size: 30, color: AppColors.buttonColor),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 1,
                      child: ListTile(
                        hoverColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: AppColors.appBarColor,
                            width: 2,
                          ),
                        ),
                        title:
                            const Text('1432', style: AppTextStyles.subStyle),
                        subtitle: const Text('Total XP',
                            style: AppTextStyles.subStyle),
                        leading: const Icon(Icons.star,
                            size: 30, color: AppColors.quaternaryTextColor),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ListTile(
                        hoverColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: AppColors.appBarColor,
                            width: 2,
                          ),
                        ),
                        title:
                            const Text('Bronze', style: AppTextStyles.subStyle),
                        subtitle: const Text('Current League',
                            style: AppTextStyles.subStyle),
                        leading: const Icon(Icons.star,
                            size: 30, color: AppColors.buttonColor),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 1,
                      child: ListTile(
                        hoverColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: AppColors.appBarColor,
                            width: 2,
                          ),
                        ),
                        title: const Text('0', style: AppTextStyles.subStyle),
                        subtitle: const Text('Top 3 Finishes',
                            style: AppTextStyles.subStyle),
                        leading: const Icon(Icons.star,
                            size: 30, color: AppColors.quaternaryTextColor),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text('Friends', style: AppTextStyles.headingStyle),
                      Spacer(),
                      Text('Add Friends', style: AppTextStyles.buttonTextStyle),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.blue,
                        indicatorWeight: 3,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        tabs: const [
                          Tab(text: 'FOLLOWING'),
                          Tab(text: 'FOLLOWERS'),
                        ],
                      ),
                      SizedBox(
                        height: 200, // Adjust the height based on your content
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // Following Tab Content
                            ListView(
                              children: const [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    child: Text('H'),
                                  ),
                                  title: Text('Hardi'),
                                  subtitle: Text('4367 XP'),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios, size: 16),
                                ),
                                Divider(),
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: Text('K'),
                                  ),
                                  title: Text('Krishna'),
                                  subtitle: Text('2334 XP'),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios, size: 16),
                                ),
                              ],
                            ),
                            // Followers Tab Content
                            const Center(
                                child: Text('There are no followers YET!')),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10.0),
                          leading: Image.asset(
                            AppImages.cat,
                            width: 60,
                            height: 60,
                          ),
                          title: const Text(
                            'Invite your friends',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            "Tell your friends it’s free and fun to learn on Mental up!",
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              // primary: Colors.blue, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('INVITE FRIENDS'),
                          ),
                          onTap: () {},
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
