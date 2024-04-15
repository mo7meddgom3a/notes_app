import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            children: [
              CustomAppBar(
                icon: Icons.check,
                title: 'Edit Note',
              ),
          SizedBox(
            height: 16,),
              CustomTextField(
                hintText: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: 'Description',
                maxLines: 5,
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                color: Colors.white,
                text: "save",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
