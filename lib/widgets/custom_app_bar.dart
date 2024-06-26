import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, required this.title, this.onPressed});
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            const Spacer(),
            CustomIcon(
              icon: icon,
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
