import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/constants/application_constants.dart';
import 'package:flutter_dashboard/features/views/main/view/main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        ),
        canvasColor: secondaryColor,
      ),
      home: const MainScreen(),
    );
  }
}
