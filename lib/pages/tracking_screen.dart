import 'package:flutter/material.dart';
import 'package:transport_application/widgets/button.dart';
import 'package:transport_application/widgets/custom_navigationbar.dart';

class TrackingScreen extends StatefulWidget {
  static const routeName = 'tracking';
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/map.png', // Replace with your image path
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
          Positioned(
            top: 56,
            left: 16,
            child: GestureDetector(
              onTap: () {
                 Navigator.pop(context);
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: const Color(0xFF101018),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/back_button.png',
                        width: 11,
                        height: 6,
                      ),
                    ),
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 28,
            right: 28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 76) / 2,
                  child: Button(
                    text: 'Chat',
                    type: ButtonType.blue,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 76) / 2,
                  child: Button(
                    text: 'Call',
                    type: ButtonType.blue,
                    onPressed: () {},
                  ),
                ),
              ],
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