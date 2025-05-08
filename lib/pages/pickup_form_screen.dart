import 'package:flutter/material.dart';
import 'package:transport_application/pages/driver_manual_screen.dart';
import 'package:transport_application/widgets/button.dart';
import 'package:transport_application/widgets/custom_appbar.dart';
import 'package:transport_application/widgets/custom_navigationbar.dart';
import 'package:transport_application/widgets/dashed_border.dart';

class PickUpFormScreen extends StatefulWidget {
  static const routeName = 'pickup-form';
  const PickUpFormScreen({super.key});

  @override
  State<PickUpFormScreen> createState() => _PickUpFormScreenState();
}

class _PickUpFormScreenState extends State<PickUpFormScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
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
            // top: 375,
            child: SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(height: 375),
                  SizedBox(
                    width: screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          20,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: screenWidth - 32,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
                        SizedBox(
                          width: screenWidth - 32,
                          child: CustomPaint(
                            painter: DashedBorderPainter(),
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/camera.png',
                                    width: 20,
                                    height: 18,
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'Please add a photo of the vehicle',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: (screenWidth - 76) / 2,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1F2026),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Drivers Signature',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  const SizedBox(height: 18),
                                  Image.asset(
                                    'assets/images/signature1.png',
                                    height: 50,
                                  ),
                                  const SizedBox(height: 24),
                                  const Text(
                                    'Pixel Perfect',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: (screenWidth - 76) / 2,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF1F2026),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Customers signature ',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  const SizedBox(height: 18),
                                  Image.asset(
                                    'assets/images/signature2.png',
                                    height: 50,
                                  ),
                                  const SizedBox(height: 24),
                                  const Text(
                                    'Pallabi',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Button(
                            text: 'Start Order',
                            type: ButtonType.blue,
                            onPressed: () => {
                              Navigator.pushNamed(
                                  context, DriverManualScreen.routeName),
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 120),
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
