import 'package:flutter/material.dart';
import 'package:transport_application/pages/driver_manual_screen.dart';
import 'package:transport_application/pages/order_details_screen.dart';
import 'package:transport_application/pages/tracking_screen.dart';
import 'package:transport_application/widgets/button.dart';
import 'package:transport_application/widgets/custom_appbar.dart';
import 'package:transport_application/widgets/custom_navigationbar.dart';

class InspectionScreen extends StatefulWidget {
  static const routeName = 'inspection';
  const InspectionScreen({super.key});

  @override
  State<InspectionScreen> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
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
            child: SingleChildScrollView(
              child: Container(
                width: screenWidth - 32,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                decoration: BoxDecoration(
                  color: const Color(0xFF14141A),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Order 1',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    Button(
                      text: 'Pick Up Information',
                      type: ButtonType.blue,
                      onPressed: () => {
                        Navigator.pushNamed(context, DriverManualScreen.routeName),
                      },
                    ),
                    const SizedBox(height: 12),
                    Button(
                      text: 'Delivery information ',
                      type: ButtonType.white,
                      onPressed: () => {
                        Navigator.pushNamed(context, OrderDetailsScreen.routeName),
                      },
                    ),
                    const SizedBox(height: 12),
                    Button(
                      text: 'Start pickup inspection',
                      type: ButtonType.red,
                      onPressed: () => {
                        Navigator.pushNamed(context, TrackingScreen.routeName),
                      },
                    ),
                  ],
                ),
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
