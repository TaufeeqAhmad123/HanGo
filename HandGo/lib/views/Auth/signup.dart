import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/routes.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:flutter_application_1/core/utils/colors.dart';
import 'package:flutter_application_1/core/utils/extantion.dart';
import 'package:flutter_application_1/core/utils/image.dart';
import 'package:flutter_application_1/widgets/my-text_field.dart';
import 'package:flutter_application_1/widgets/my_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Signup', style: bold28),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  20.vSpace,
                  CustomTextField(
                    hintText: 'Email ',
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  20.vSpace,
                  CustomTextField(
                    hintText: 'password ',
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  20.vSpace,
                  CustomTextField(
                    hintText: 'confirm password ',
                    controller: _confirmPassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your confirm password';
                      }
                      return null;
                    },
                    suffixIcon: Icons.visibility,
                  ),
                  20.vSpace,
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        side: const BorderSide(
                          width: 2.0,
                          color: AppColors.KprimaryColor,
                        ),
                        activeColor: AppColors.KprimaryColor,
                        // fillColor: MaterialStateProperty.all(Colors.amberAccent),
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      5.hSpace,
                      RichText(
                        text: TextSpan(
                          text: 'I agree to the ',
                          style: semiBold18.copyWith(
                            color: AppColors.KBlackColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Terms of Service',
                              style: semiBold18.copyWith(
                                color: AppColors.KprimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.vSpace,
            CustomCupertinoButton(
              text: 'Sign Up',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Perform sign up
                }
              },
              textStyle: bold20.copyWith(color: AppColors.KWhiteColor),
              maxWidth: 370,
              backgroundColor: AppColors.KprimaryColor,
              textColor: AppColors.KWhiteColor,
              borderRadius: 30,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),

            20.vSpace,

            Text('or Sign in with', style: regular20),
            40.vSpace,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(facebook, width: 60, height: 60),
                SvgPicture.asset(google, width: 60, height: 60),
              ],
            ),
            30.vSpace,

            InkWell
            (
              onTap: () => context.go(AppRoutes.login),
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: semiBold20.copyWith(color: AppColors.KBlackColor),
                  children: [
                    
                    TextSpan(
                      
                      text: 'Sign In',
                      style: semiBold20.copyWith(color: AppColors.KprimaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
