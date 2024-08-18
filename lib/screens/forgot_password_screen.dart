import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import 'package:project_3/screens/login_screen.dart';
import '../core/widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 70),
              SvgPicture.asset(AppImages.logo),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    // Soon: Add code to send reset password email
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(AppColors.buttonColor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text('Reset Password',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.buttonTextColor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                },
                child: const Text(
                  'Back to Login',
                  style: TextStyle(
                      color: AppColors.tertiaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 160),
              Image.asset(AppImages.image1,
                  fit: BoxFit.fill), // Temporary png because the SVG image is not loading :[
            ],
          ),
        ),
      ),
    );
  }
}
