import 'package:flutter/material.dart';
import 'package:photoclass/constants/colors.dart';
import 'package:photoclass/constants/controllers.dart';
import 'package:photoclass/controllers/sql_controller.dart';
import 'package:photoclass/models/album.dart';
import 'package:photoclass/widgets/add_album_modal/add_album_modal_text_input.dart';
import 'package:photoclass/widgets/add_album_modal/add_album_modal_top.dart';
import 'package:photoclass/widgets/cancel_button.dart';
import 'package:photoclass/widgets/confirm_button.dart';

class AddAlbumModal extends StatelessWidget {
  const AddAlbumModal({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomSheet(
      onClosing: (() => Navigator.pop(context)),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) => Container(
          height: size.height * 0.8,
          decoration: BoxDecoration(
            color: dark,
            borderRadius: BorderRadius.vertical(top: Radius.elliptical(50, 20)),
          ),
          child: Column(
            children: [
              AddAlbumModalTop(),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          light.withOpacity(.3),
                          light.withOpacity(.1)
                        ])),
                child: Column(
                  children: [
                    AddAlbumModalTextInput(icon: Icons.folder),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CancelButton(
                          onTap: () => Navigator.pop(context),
                        ),
                        ConfirmButton(
                          onTap: () {
                            sqlController.insertAlbum(Album(0,
                                addAlbumModalController.nameController.text));
                            addAlbumModalController.clear();
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
