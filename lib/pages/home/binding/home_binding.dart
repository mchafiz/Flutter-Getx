import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_services.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ApiService());
  }
}
