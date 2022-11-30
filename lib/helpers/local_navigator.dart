import 'package:flutter/material.dart';
import 'package:photoclass/constants/controllers.dart';
import 'package:photoclass/routing/router.dart';
import 'package:photoclass/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: AlbunsPageRoute,
  onGenerateRoute: generateRoute,
);
