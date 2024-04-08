import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteWidget extends StatelessWidget {
  CustomNoteWidget({super.key, this.index});
  int? index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
              ),
              child: Text(
                'Flutter Tips $index',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            subtitle: Text(
              'This is the note i wanna play vollypong with ',
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.trash,
                size: 24,
              ),
              color: Colors.black,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 24.0),
          child: Text(
            "may21 2020 ",
            style: TextStyle(color: Colors.black.withOpacity(.6), fontSize: 16),
          ),
        ),
      ],
    );
  }
}
