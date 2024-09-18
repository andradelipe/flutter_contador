import 'package:flutter/material.dart';
import 'package:flutter_count/view/home.view.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
      ],
    );
  }
}
