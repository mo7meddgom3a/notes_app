import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import '../widgets/add_note.dart';
import '../widgets/list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
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
              context: context,
              builder: (context) {
                return AddNote();
              },
            );
          },
          child: Icon(Icons.add),
        ));
  }
}
