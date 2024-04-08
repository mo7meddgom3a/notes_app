import 'package:flutter/material.dart';

import 'custom_note_widget.dart';
import 'notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NotesViewBody(index: index,);
        },
      ),
    );
  }
}
