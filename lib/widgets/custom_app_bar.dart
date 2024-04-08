import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Spacer(),
          Container(
            height: 45,
            width: 45,
            child: Icon(
              Icons.search,
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
