import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_with_getx1/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice More and More',
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
    );
  }
}
