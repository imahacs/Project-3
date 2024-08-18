import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_3/core/constants/colors.dart';
import 'package:project_3/core/constants/images.dart';
import 'package:project_3/nav_bar.dart';
import 'package:project_3/screens/forgot_password_screen.dart';
import '../core/widgets/custom_text_field.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen()),
                        );
                      });
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
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
                        builder: (context) => const NavBar(initialIndex: 0),
                      ),
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
                  child: const Text('GO',
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
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
                  fit: BoxFit
                      .fill), // Temporary png because the SVG image is not loading :[
            ],
          ),
        ),
      ),
    );
  }
}
