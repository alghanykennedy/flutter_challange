import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/data/model_emoji.dart';

import 'package:get/get.dart';

import '../../home/views/components/image_preview.dart';
import '../controllers/detail_screen_controller.dart';
import 'components/checklist_button.dart';
import 'components/list_emoji_widget.dart';
import 'components/text_time_counter.dart';

class DetailScreenView extends GetView<DetailScreenController> {
  const DetailScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailScreenView'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            child: Column(
              children: [
                TextTimeCounter(controller: controller),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Image Preview
                    DragTarget<Emoji>(
                      onAccept: (emoji) => controller.onEmojiDropped(emoji),
                      builder: (context, _, __) => ImagePreview(
                        title: "Image Preview",
                        controllerDetail: controller,
                        height: 300,
                        width: 280,
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    /// List of Emoji Widget
                    ListEmojiWidget(controller: controller),
                  ],
                ),
              ],
            ),
          ),

          /// Icon Checklist / submit
          ChecklistButton(controller: controller),
        ],
      ),
    );
  }
}
