import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final home = Get.find<HomeController>();

    final apiservice = Get.find<ApiService>();
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "${home.counter}",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      home.increment();
                    },
                    child: Text(
                      'counter button',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      home.decrement();
                    },
                    child: Text(
                      'decrement button',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      apiservice.fetchTextFromApi().then((value) =>
                          Get.snackbar('PERHATIAN', "$value",
                              snackPosition: SnackPosition.BOTTOM));
                    },
                    child: Text(
                      'Get api services',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/detail');
                    },
                    child: Text(
                      'To Detail Cuaca',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
