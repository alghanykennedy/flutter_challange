import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../detail_screen/controllers/detail_screen_controller.dart';
import '../controllers/home_controller.dart';
import 'components/button_primary.dart';
import 'components/image_preview.dart';
import 'components/text_information.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerDetail = Get.find<DetailScreenController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 800,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Text Information
            TextInformation(controllerDetail: controllerDetail),

            /// Image Preview
            ImagePreview(
              title: "Image Preview From Detail Screen",
              height: 250,
              width: 250,
              controllerDetail: controllerDetail,
            ),

            /// Button
            ButtonPrimary(controllerDetail: controllerDetail),
          ],
        ),
      ),
    );
  }
}
