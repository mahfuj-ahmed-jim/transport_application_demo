import 'package:flutter/material.dart';
import 'package:transport_application/pages/login_screen.dart';
import 'package:transport_application/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = 'welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101018),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 40),
                child: Image.asset(
                  'assets/images/welcome.png',
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Button(
                      text: "Driver Login",
                      type: ButtonType.blue,
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    const SizedBox(height: 16),
                    Button(
                      text: "Customer Login",
                      type: ButtonType.white,
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    const SizedBox(height: 16),
                    Button(
                      text: "Carrier Login",
                      type: ButtonType.red,
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
