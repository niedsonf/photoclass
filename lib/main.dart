import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photoclass/controllers/album_showcase_controller.dart';
import 'package:photoclass/controllers/sql_controller.dart';
import 'package:photoclass/firebase_options.dart';
import 'package:photoclass/pages/home/home.dart';
import 'package:url_strategy/url_strategy.dart';
import 'controllers/add_album_modal_controller.dart';
import 'controllers/navigation_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  Get.put(NavigationController());
  Get.put(SqlController());
  Get.put(AlbumShowcaseController());
  Get.put(AddAlbumModalController());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PhotoClass());
}

class PhotoClass extends StatelessWidget {
  const PhotoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Class',
      theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
      home: HomePage(),
    );
  }
}
