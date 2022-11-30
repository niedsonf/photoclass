import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:photoclass/constants/controllers.dart';
import 'package:photoclass/models/album.dart';
import 'package:sqflite/sqflite.dart';

class SqlController extends GetxController {
  static SqlController instance = Get.find();

  Future<Database> openDB() async => openDatabase(
      join(await getDatabasesPath(), 'database.db'),
      version: 1,
      onCreate: (db, version) =>
          db.execute('CREATE TABLE albums(id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT)'));

  Future<void> insertAlbum(Album album) async {
    final db = await openDB();
    db.insert('albums', album.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    albumShowcaseController.sync();
  }

  Future<List<Album>> getAlbums() async {
    final db = await openDB();
    final List<Map<String, dynamic>> albumsMap = await db.query('albums');
    return List.generate(albumsMap.length,
        (i) => Album(albumsMap[i]['id'], albumsMap[i]['name']));
  }
}
