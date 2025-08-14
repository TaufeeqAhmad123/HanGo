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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Text('Login', style: bold28),
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
                      Text(
                        'Remember me',
                        style: semiBold18.copyWith(color: AppColors.KBlackColor),
                      ),
                      Spacer(),
                      Text(
                        'Forgot Password?',
                        style: semiBold18.copyWith(color: AppColors.KBlackColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.vSpace,
            CustomCupertinoButton(
              text: 'Sign In',
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   // Perform sign up
                // }
                context.go(AppRoutes.home);
              },
              textStyle: bold20.copyWith(color: AppColors.KWhiteColor),
              maxWidth: 370,
              backgroundColor: AppColors.KprimaryColor,
              textColor: AppColors.KWhiteColor,
              borderRadius: 30,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),

            20.vSpace,

            Text('or Sign up in with', style: regular20),
            40.vSpace,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(facebook, width: 60, height: 60),
                SvgPicture.asset(google, width: 60, height: 60),
              ],
            ),
            30.vSpace,

            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: semiBold20.copyWith(color: AppColors.KBlackColor),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: semiBold20.copyWith(color: AppColors.KprimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
