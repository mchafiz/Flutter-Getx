import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_services.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final home = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Container(
            child: Obx(
          () => (Text('${home.counter}')),
        )),
      ),
    );
  }
}
