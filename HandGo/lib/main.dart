import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routes/app_router.dart';

import 'package:flutter_application_1/views/splash/splash.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'HandGo',
        routerConfig: appRouter,
        );
      },
    );
  }
}
