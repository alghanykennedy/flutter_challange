import 'package:get/get.dart';

import 'package:flutter_challenge/app/modules/detail_screen/bindings/detail_screen_binding.dart';
import 'package:flutter_challenge/app/modules/detail_screen/views/detail_screen_view.dart';
import 'package:flutter_challenge/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_challenge/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SCREEN,
      page: () => DetailScreenView(),
      binding: DetailScreenBinding(),
    ),
  ];
}
