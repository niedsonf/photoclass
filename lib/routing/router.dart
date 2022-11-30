import 'package:flutter/material.dart';
import 'package:photoclass/pages/albuns/albuns.dart';
import 'package:photoclass/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case AlbunsPageRoute:
      return _getPageRoute(AlbunsPage());
    default:
      return _getPageRoute(AlbunsPage());
  }
}

PageRoute _getPageRoute(Widget page) => MaterialPageRoute(builder: ((context) => page));