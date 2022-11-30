import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoclass/constants/colors.dart';
import 'package:photoclass/constants/controllers.dart';
import 'package:photoclass/widgets/folder_item.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AlbunsPage extends StatefulWidget {
  const AlbunsPage({super.key});

  @override
  State<AlbunsPage> createState() => _AlbunsPageState();
}

class _AlbunsPageState extends State<AlbunsPage> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliverStack(
        children: [
          SliverPositioned.fill(
              child: Container(
                  decoration: BoxDecoration(
            color: dark,
          ))),
          SliverPadding(
            padding: EdgeInsets.only(right: 10),
            sliver: SliverGrid.count(crossAxisCount: 2, children: [
              ...albumShowcaseController.albumShowcase
                  .map((i) => FolderItem(id: i.id, name: i.name))
            ]),
          ),
        ],
      ),
    );
  }
}
