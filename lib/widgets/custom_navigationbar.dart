import 'dart:ui';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12), // Ensures the blur respects the border radius
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adds the blur effect
        child: Container(
          margin: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 24),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF101018).withOpacity(0.8), // Semi-transparent background
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context,
                index: 0,
                iconPath: 'assets/images/load_home.png',
                label: 'Load Board',
              ),
              _buildNavItem(
                context,
                index: 1,
                iconPath: 'assets/images/my_load.png',
                label: 'My Loads',
              ),
              _buildNavItem(
                context,
                index: 2,
                iconPath: 'assets/images/settings_home.png',
                label: 'Settings',
              ),
              _buildNavItem(
                context,
                index: 3,
                iconPath: 'assets/images/profile.png',
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context,
      {required int index, required String iconPath, required String label}) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            width: 20,
            height: 20,
            color: isSelected ? Colors.white : Colors.white.withOpacity(0.4),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.white : Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}