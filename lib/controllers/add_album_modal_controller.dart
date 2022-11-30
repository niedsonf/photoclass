import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAlbumModalController extends GetxController {
  static AddAlbumModalController instance = Get.find();

  TextEditingController nameController = TextEditingController();

  clear() {
    nameController.text = '';
  }
}