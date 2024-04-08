import 'package:flutter/material.dart';
import 'custom_note_widget.dart';

class NotesViewBody extends StatelessWidget {
  NotesViewBody({super.key , this.index});
  int? index;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            padding: EdgeInsets.only(top: 24, left: 16, bottom: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: CustomNoteWidget(index: index,),
          ),
        );
  }
}

