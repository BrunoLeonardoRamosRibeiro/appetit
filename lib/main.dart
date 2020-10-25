import 'package:appetit/pages/login/login_page.dart';
import 'package:appetit/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appetit',
      theme: ThemeData(
        primarySwatch: ORANGE_APPETIT,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: LoginPage(),
    );
  }
}

