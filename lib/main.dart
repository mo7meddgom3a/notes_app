import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView(),
    theme: ThemeData.dark(),);
  }
}
