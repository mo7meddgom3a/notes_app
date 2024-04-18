import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
  String? _title, _subtitle;
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
            height: 10,
          ),
          const ColorList(),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    var noteModel = NoteModel(
                        color: Colors.blue.value,
                        title: _title!,
                        subtitle: _subtitle!,
                        date: DateFormat('yyyy-MM-dd').format(DateTime.now()));
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    _autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                color: Colors.white,
                text: 'add note',
              );
            },
          ),
        ],
      ),
    );
  }
}

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  isSelected ?   Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
    ) :Container(
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int selectedIndex = 0;
  List<Color> colors = const[
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.grey,
    Color(0xff8789C0),
    Color(0xff45F0DF),
    Color(0xffAEB8DC),
    Color(0xff8380B6),
    Color(0xff111D4A),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
               {
                selectedIndex = index;
                setState(() {});
              }
            },
            child: ColorsItem(
              color: colors[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
