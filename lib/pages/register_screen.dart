import 'package:flutter/material.dart';
import 'package:transport_application/widgets/button.dart';
import 'package:transport_application/widgets/input.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = 'register';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 56),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                  width: 80,
                ),
                const SizedBox(height: 64),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registration',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 24),
                      Input(
                        hintText: "First Name",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "Last Name",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "Name of the Company",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "Email",
                        icon: Icons.email,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "Phone",
                        icon: Icons.phone,
                        isPassword: true,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "Picture",
                        icon: Icons.photo,
                        isPassword: true,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "MC/DOT",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "A",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "W 9",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                      Input(
                        hintText: "WATCH",
                        icon: Icons.check_box,
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Button(
                        text: "Registration",
                        type: ButtonType.blue,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {},
                        child: const Text.rich(
                          TextSpan(
                            text: "Have an account? ",
                            style:
                                TextStyle(color: Color.fromRGBO(68, 81, 100, 1)),
                            children: [
                              TextSpan(
                                text: "Login",
                                style: TextStyle(color: Color(0xFF3AAFFF)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
