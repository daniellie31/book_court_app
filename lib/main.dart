import 'package:book_court_app/const.dart';
import 'package:book_court_app/pages/home_page.dart';
import 'package:book_court_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: lightBlue, // Set cursor color
          selectionColor: Colors.grey[200], // Set text selection color
          selectionHandleColor: lightBlue,
        ),
      ),
      home: const HomePage(),
      initialRoute: RouteClass.getHomeRoute(),
      getPages: RouteClass.routes,
    );
  }
}
