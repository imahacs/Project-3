import 'package:flutter/material.dart';
import 'package:project_3/core/constants/colors.dart';
import 'screens/challenges_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/setting_screen.dart';

class NavBar extends StatefulWidget {
  final int initialIndex;
  const NavBar({super.key, required this.initialIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const ChallengesScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  final List<Color> _selectedItemColors = [
    Colors.blue,      // Home
    Colors.orange,    // Challenges
    Colors.green,     // Profile
    Colors.purple,    // Settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0, 
        unselectedItemColor: AppColors.secondaryTextColor,
        selectedItemColor: _selectedItemColors[currentIndex],
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.appBarColor,
        selectedIconTheme: const IconThemeData(size: 20),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: "Challenges",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
