import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLines = 1});
  final String? hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        hintText: hintText ?? '',
        label: Text(hintText ?? ''),
      ),
    );
  }
}
