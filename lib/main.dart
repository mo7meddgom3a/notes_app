import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/simpel_bloc_observer.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'cubit/noted_cubit/notes_cubit.dart';
import 'models/note_model.dart';
import 'views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Color(0xFF1A1A1A),
  ));
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        routes: {
          'HomeView': (context) => HomeView(),
          "EditNoteView": (context) => EditNoteView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        home: const HomeView(),
      ),
    );
  }
}