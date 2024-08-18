import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import '../core/widgets/custom_text_field.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  labelText: 'Username',
                  hintText: 'Choose a username',
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  labelText: 'Password',
                  hintText: 'Create a password',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
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
                  child: const Text('Sign Up',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.buttonTextColor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: AppColors.tertiaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.asset(AppImages.image1,
                  fit: BoxFit.fill), // Temporary png because the SVG image is not loading :[
            ],
          ),
        ),
      ),
    );
  }
}
