import 'package:flutter/material.dart';
import 'package:transport_application/pages/driver_manual_screen.dart';
import 'package:transport_application/pages/home_screen.dart';
import 'package:transport_application/pages/inspection_screen.dart';
import 'package:transport_application/pages/load_board_screen.dart';
import 'package:transport_application/pages/login_screen.dart';
import 'package:transport_application/pages/order_details_screen.dart';
import 'package:transport_application/pages/pickup_form_screen.dart';
import 'package:transport_application/pages/register_screen.dart';
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

    case  RegisterScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    case LoadBoardScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoadBoardScreen(),
      );

    case InspectionScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const InspectionScreen(),
      );

    case DriverManualScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const DriverManualScreen(),
      );

    case OrderDetailsScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const OrderDetailsScreen(),
      );

    case PickUpFormScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const PickUpFormScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      );
  }
}
