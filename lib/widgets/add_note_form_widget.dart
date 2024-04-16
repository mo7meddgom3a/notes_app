import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_button_widget.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  String? _title , _subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              _title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              _subtitle = value;
            },
            maxLines: 7,
            hintText: 'Description',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              if (_formKey.currentState!.validate()){
                _formKey.currentState!.save();

                var noteModel = NoteModel(color : Colors.blue.value, title: _title!, subtitle: _subtitle!, date: DateTime.now().toString());
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }else{
                _autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
            color: Colors.black,
            text: 'add note',
          ),
        ],
      ),
    );
  }
}
