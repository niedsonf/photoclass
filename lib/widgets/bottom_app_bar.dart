import 'package:flutter/material.dart';
import 'package:photoclass/constants/colors.dart';

BottomAppBar bottomNavBar(BuildContext context) => BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: orange,
      child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.history),
                splashRadius: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.manage_accounts),
                splashRadius: 20,
              ),
            ],
          )),
    );
