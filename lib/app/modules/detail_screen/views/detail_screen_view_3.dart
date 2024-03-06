import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/modules/detail_screen/views/components/list_emoji_widget_3.dart';

import 'package:get/get.dart';

import '../../home/views/components/image_preview.dart';
import '../controllers/detail_screen_controller.dart';
import 'components/checklist_button.dart';
import 'components/text_time_counter.dart';

class DetailScreenView3 extends GetView<DetailScreenController> {
  const DetailScreenView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Stack(
            children: [
              /// Image Preview
              // Positioned(
              //   top: Get.height / 3,
              //   right: 0,
              //   left: 0,
              //   bottom: 0,
              //   child: ImagePreview(
              //     title: "Image Preview From Detail Screen",
              //     height: 250,
              //     width: 250,
              //     controllerDetail: controller,
              //   ),
              // ),
              ...controller.movableEmoji,
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const Text('Detail Screen'),
                    TextTimeCounter(controller: controller),

                    /// Icon Checklist / submit
                    ChecklistButton(controller: controller),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ListEmojiWidget3(controller: controller))),
            ],
          ),
        ),
      ),
    );
  }
}
