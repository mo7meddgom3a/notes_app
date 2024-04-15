import 'package:flutter/material.dart';
import 'add_note_form_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

