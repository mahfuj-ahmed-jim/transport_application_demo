import 'package:flutter/material.dart';
import 'package:transport_application/pages/pickup_form_screen.dart';
import 'package:transport_application/widgets/button.dart';
import 'package:transport_application/widgets/custom_appbar.dart';
import 'package:transport_application/widgets/custom_navigationbar.dart';

class DriverManualScreen extends StatefulWidget {
  static const routeName = 'driver-manual';
  const DriverManualScreen({super.key});

  @override
  State<DriverManualScreen> createState() => _DriverManualScreenState();
}

class _DriverManualScreenState extends State<DriverManualScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.transparent,
                  ],
                  stops: [0.7, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assets/images/truck_image.png',
                width: screenWidth,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 375,
            child: Container(
              width: screenWidth - 32,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              decoration: BoxDecoration(
                color: const Color(0xFF14141A),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'The vehicle needs to be picked up strictly at 4pm and taken out at 6pm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Button(
                    text: 'Accept order ',
                    type: ButtonType.blue,
                    onPressed: () => {
                      Navigator.pushNamed(context, PickUpFormScreen.routeName),
                    },
                  ),
                  const SizedBox(height: 12),
                  Button(
                    text: 'Decline order',
                    type: ButtonType.red,
                    onPressed: () => {
                      Navigator.pushNamed(context, PickUpFormScreen.routeName),
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
