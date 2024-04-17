import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
              ),
              child: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            subtitle: Text(
              note.subtitle,
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.trash,
                size: 24,
              ),
              color: Colors.black,
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 24.0),
          child: Text(
            note.date,
            style: TextStyle(color: Colors.black.withOpacity(.6), fontSize: 16),
          ),
        ),
      ],
    );
  }
}
