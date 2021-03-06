import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/detail/views/detail.dart';
import 'package:flutter_getx/pages/home/binding/home_binding.dart';
import 'package:flutter_getx/pages/home/view/home.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      getPages: [
        GetPage(
            name: "/home", page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(name: "/detail", page: () => DetailScreen()),
      ],
      initialRoute: '/home',
    );
  }
}
