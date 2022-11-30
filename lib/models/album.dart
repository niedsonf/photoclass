import 'package:flutter/material.dart';

class Album {
  final int id;
  final String name;

  Album(this.id, this.name);

  Map<String, dynamic> toMap() => {'id': id, 'name': name};
}
