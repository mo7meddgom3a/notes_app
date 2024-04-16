import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'add_note_form_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print(state.error);
          }
        },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
      ),
    );
  }
}
