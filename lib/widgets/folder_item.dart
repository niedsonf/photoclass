import 'package:flutter/material.dart';
import 'package:photoclass/constants/colors.dart';

class FolderItem extends StatelessWidget {
  final int id;
  final String name;
  const FolderItem({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: grey, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          height: 120,
          width: 120,
          margin: EdgeInsets.only(top: 10, left: 10),
          decoration: BoxDecoration(
              color: mediumGrey, borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          height: 120,
          width: 120,
          margin: EdgeInsets.only(top: 20, left: 20),
          decoration: BoxDecoration(
              color: lightGrey, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Expanded(
                  child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Container(
                        color: orange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(name,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: dark,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ))),
              Expanded(
                  flex: 3,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Icon(Icons.folder, color: orange, size: 42),
                      Text(id.toString(),
                          style: TextStyle(
                              fontSize: 16,
                              color: dark,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.notification_important,
                                color: rubyColor, size: 16),
                            Text("x8",
                                style:
                                    TextStyle(color: rubyColor, fontSize: 14))
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
