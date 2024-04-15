import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(
          .1,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: const Center(
        child: Text(
          'Add Note',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}