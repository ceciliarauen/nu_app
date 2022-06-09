import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nu_app_copy/constants/colors_palette.dart';
import 'package:nu_app_copy/screens/home_page/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Lookalike',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: ColorsPalette.kPrimaryColor,
        ),
        scaffoldBackgroundColor: ColorsPalette.kBackgroundColor,
        primaryColor: ColorsPalette.kPrimaryColor,
      ),
      home: const HomePage(),
    );
  }
}
