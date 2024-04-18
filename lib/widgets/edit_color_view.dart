import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list_view.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
   late int selectedIndex;

   @override
  void initState() {
    selectedIndex = kColors.indexWhere((element) => element.value == widget.note.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              {
                selectedIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {
                });
              }
            },
            child: ColorsItem(
              color: kColors[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
