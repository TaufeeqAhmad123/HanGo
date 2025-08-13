import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/routes.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRoutes.onboarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hand',
            style: bold34,
            children: <TextSpan>[
              TextSpan(
                text: 'Go',
                style: bold34.copyWith(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
