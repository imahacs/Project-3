import 'package:flutter/material.dart';
import 'package:project_3/screens/login_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const ListTile(
              title: Text('Account'),
              leading: Icon(Icons.person),
            ),
            const Divider(),
            const ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications),
            ),
            const Divider(),
            const ListTile(
              title: Text('Privacy'),
              leading: Icon(Icons.lock),
            ),
            const Divider(),
            const ListTile(
              title: Text('Security'),
              leading: Icon(Icons.security),
            ),
            const Divider(),
            const ListTile(
              title: Text('Language'),
              leading: Icon(Icons.language),
            ),
            const Divider(),
            const ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
            ),
            const Divider(),
            const ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure you want to log out?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); 
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); 
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: const Text('Logout'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
