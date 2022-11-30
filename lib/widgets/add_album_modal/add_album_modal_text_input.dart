import 'package:flutter/material.dart';
import 'package:photoclass/constants/controllers.dart';

import '../../constants/colors.dart';

class AddAlbumModalTextInput extends StatefulWidget {
  final IconData icon;
  const AddAlbumModalTextInput({super.key, required this.icon});

  @override
  State<AddAlbumModalTextInput> createState() => _AddAlbumModalTextInputState();
}

class _AddAlbumModalTextInputState extends State<AddAlbumModalTextInput> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: lightGrey, borderRadius: BorderRadius.circular(5)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Row(
          children: [
            Expanded(
                child: Container(
              height: 40,
              color: orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.note, size: 16, color: lightGrey),
                  Text('Nome', style: TextStyle(fontSize: 10, color: lightGrey))
                ],
              ),
            )),
            SizedBox(width: 10),
            Expanded(
              flex: 3,
              child: TextField(
                controller: addAlbumModalController.nameController,
                cursorColor: orange,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 16, color: orange)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
