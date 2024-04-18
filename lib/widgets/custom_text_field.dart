import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLines = 1, this.onSaved, this.onchange, this.initialValue});
  final String? hintText , initialValue;
  final int maxLines;
  final void Function(String?)? onSaved , onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue ?? '' ,
      onChanged: onchange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        hintText: hintText ?? '',
        labelText: hintText ?? '',
      ),
    );
  }
}
