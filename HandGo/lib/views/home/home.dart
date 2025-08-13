import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text('Ali', style: bold28))],
      ),
    );
  }
}
