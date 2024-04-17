import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_note_widget.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note,});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'EditNoteView');
            },
            child: Container(
              padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color(note.color),
              ),
              child: CustomNoteWidget(note: note),
            ),
          ),
        );
  }
}

