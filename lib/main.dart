import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

import 'views/home_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomeView': (context) => HomeView(),
        "EditNoteView" : (context) => EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: const HomeView(),
    );
  }
}