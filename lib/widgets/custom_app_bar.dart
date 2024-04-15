import 'package:flutter/material.dart';

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
          Container(
            height: 45,
            width: 45,
            child: Icon(
              icon,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(
                .1,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
