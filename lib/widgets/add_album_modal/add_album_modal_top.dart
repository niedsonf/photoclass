import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AddAlbumModalTop extends StatelessWidget {
  const AddAlbumModalTop({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.elliptical(50, 20)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: orange),
            height: 2,
            width: 50,
          ),
          const SizedBox(height: 10),
          Text('ADICIONAR ÁLBUM',
              style: TextStyle(fontSize: 10, color: orange)),
          
        ],
      ),
    );
  }
}
