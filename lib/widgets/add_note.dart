import 'package:flutter/material.dart';

import 'custom_button_widget.dart';
import 'custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 7,
              hintText: 'Description',
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
