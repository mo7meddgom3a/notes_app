import 'package:flutter/material.dart';
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
