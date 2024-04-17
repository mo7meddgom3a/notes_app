import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppBar(
                icon: Icons.check,
                title: 'Edit Note',
              ),
          SizedBox(
            height: 25,),
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
            ],
          ),
        ),
      ),
    );
  }
}
