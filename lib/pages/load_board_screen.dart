import 'package:flutter/material.dart';

class LoadBoardScreen extends StatefulWidget {
  static const routeName = 'load-board';
  const LoadBoardScreen({super.key});

  @override
  State<LoadBoardScreen> createState() => _LoadBoardScreenState();
}

class _LoadBoardScreenState extends State<LoadBoardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        toolbarHeight: 56,
        leading: GestureDetector(
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
        centerTitle: false,
      ),
      body: const Center(
        child: Text('Load Board Screen'),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.02),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/load_home.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 0
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Load Board',
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == 0
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/my_load.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 1
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'My Loads',
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == 1
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/settings_home.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 2
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == 2
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 3
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedIndex == 3
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
