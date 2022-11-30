import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photoclass/constants/colors.dart';

class AppSliverBar extends StatefulWidget {
  const AppSliverBar({super.key});

  @override
  State<AppSliverBar> createState() => _AppSliverBarState();
}

class _AppSliverBarState extends State<AppSliverBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      floating: true,
      backgroundColor: orange,
      title: Row(children: const [
        CircleAvatar(
            radius: 12,
            backgroundColor: dark,
            child: Icon(Icons.person, color: light)),
        SizedBox(width: 10),
        Text('Niedson Fernandes', style: TextStyle(fontSize: 14, color: lightGrey, fontWeight: FontWeight.w300)),
      ]),
      expandedHeight: 80.0,
    );
  }
}
