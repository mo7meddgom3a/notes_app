import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.color,this.onTap,
  });
  final String text;
  final Color color ;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}