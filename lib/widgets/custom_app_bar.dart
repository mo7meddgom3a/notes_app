import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          CustomIcon(icon: icon)
        ],
      ),
    );
  }
}

