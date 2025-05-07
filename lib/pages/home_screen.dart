import 'package:flutter/material.dart';
import 'package:transport_application/widgets/icon_button.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101018),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 110,
                    width: 110,
                  ),
                  const SizedBox(height: 100),
                  CustomIconButton(
                    icon: 'assets/images/load_board.png',
                    text: 'Load Board',
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 12),
                  CustomIconButton(
                    icon: 'assets/images/summary.png',
                    text: 'Summary',
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 12),
                  CustomIconButton(
                    icon: 'assets/images/settings.png',
                    text: 'Setting',
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 12),
                  CustomIconButton(
                    icon: 'assets/images/logout.png',
                    text: 'Log Out',
                    onPressed: () => {},
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
