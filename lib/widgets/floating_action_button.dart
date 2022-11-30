import 'package:flutter/material.dart';
import 'package:photoclass/constants/colors.dart';
import 'package:photoclass/widgets/add_album_modal/add_album_modal.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          
          builder: (BuildContext context) => AddAlbumModal()),
      mini: true,
      backgroundColor: Colors.black54,
      
      child: Icon(Icons.add_to_photos, color: orange),
    );
  }
}
