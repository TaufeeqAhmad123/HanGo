import 'package:flutter_application_1/core/routes/routes.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/views/Auth/login.dart';
import 'package:flutter_application_1/views/Auth/signup.dart';
import 'package:flutter_application_1/views/detail/detail_screen.dart';
import 'package:flutter_application_1/views/home/home.dart';
import 'package:flutter_application_1/views/onBoarding/onboarding.dart';
import 'package:flutter_application_1/views/splash/splash.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.detail,
      builder: (context, state) {
        final product = state.extra as ProductModel;
        return DetailScreen(product: product);
      }),
    
  ],
);
