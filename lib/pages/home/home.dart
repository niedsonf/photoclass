import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:photoclass/helpers/local_navigator.dart';
import 'package:photoclass/pages/albuns/albuns.dart';
import 'package:photoclass/widgets/bottom_app_bar.dart';
import 'package:photoclass/widgets/floating_action_button.dart';
import 'package:photoclass/widgets/sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: CustomScrollView(
          slivers: [AppSliverBar(), AlbunsPage()],
        ),
        floatingActionButton: FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: bottomNavBar(context));
  }
}
