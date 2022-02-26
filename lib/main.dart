

import 'package:detail_food_screen/resturant_Screen/ResturantScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/newDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "wahsh",
      home:ResturantPage ( ),
    );
  }
}