import 'package:get/get.dart';
import 'package:latihan_local_database/pages/home/controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}