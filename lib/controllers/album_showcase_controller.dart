import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photoclass/constants/controllers.dart';
import 'package:photoclass/controllers/sql_controller.dart';
import 'package:photoclass/models/album.dart';

class AlbumShowcaseController extends GetxController {
  static AlbumShowcaseController instance = Get.find();

  RxList<Album> albumShowcase = [Album(0, 'null')].obs;

  void sync() async {
    albumShowcase.value = await sqlController.getAlbums();
  }
}