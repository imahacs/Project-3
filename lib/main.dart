import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/login_screen.dart'; // Import the login screen

import 'core/constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://heqisqidffptsnlthhzu.supabase.co',
    anonKey: 'your-supabase-anon-key',
    debug: true,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Educational Kids Game',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const LoginScreen(), 
    );
  }
}
