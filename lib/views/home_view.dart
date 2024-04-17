import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/noted_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          body: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              children: [
                CustomAppBar(
                  icon: Icons.search,
                  title: 'Notes',
                ),
                NotesListView(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            child: const Icon(Icons.add),
          )),
    );
  }
}
