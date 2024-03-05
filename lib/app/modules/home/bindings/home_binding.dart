import 'package:flutter_challenge/app/modules/detail_screen/controllers/detail_screen_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DetailScreenController>(
      () => DetailScreenController(),
    );
  }
}
