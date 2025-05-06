import 'package:flutter/material.dart';
import 'package:transport_application/pages/home_screen.dart';
import 'package:transport_application/pages/login_screen.dart';
import 'package:transport_application/pages/welcome_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case  WelcomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      );

    case  LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      );
  }
}
