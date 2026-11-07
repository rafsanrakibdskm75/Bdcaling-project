import 'package:flutter/material.dart';
import 'package:untitled/winget/custom_text.dart';

import 'Home/Login_screen.dart';
import 'Home/cutom_text_testing.dart';
import 'Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CutomTextTesting(),
    );
  }
}