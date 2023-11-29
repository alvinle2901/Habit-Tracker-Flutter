import 'package:flutter/material.dart';
import 'package:habit_tracker/root.dart';
import 'package:habit_tracker/ui/auth/login_page.dart';
import 'package:habit_tracker/ui/auth/reset_password_page.dart';
import 'package:habit_tracker/ui/auth/sign_up_page.dart';
import 'package:habit_tracker/ui/habits/habit_page.dart';
import 'package:habit_tracker/ui/splash/splash_page.dart';

import 'core/models/habit.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case LoginPage.route:
        page = const LoginPage();
        break;
      case SignUpPage.route:
        page = const SignUpPage();
        break;
      case ResetPasswordPage.route:
        page = const ResetPasswordPage();
        break;
      case SplashPage.route:
        page = const SplashPage();
        break;
      default:
        page = const Root();
    }

    return MaterialPageRoute(builder: (context) => page);
  }
}
