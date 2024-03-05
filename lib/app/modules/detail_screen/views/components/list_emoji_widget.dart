import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/model_emoji.dart';
import '../../controllers/detail_screen_controller.dart';
import 'emoji_icon_widget.dart';

class ListEmojiWidget extends StatelessWidget {
  const ListEmojiWidget({
    super.key,
    required this.controller,
  });

  final DetailScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.8),
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Obx(
            () => Expanded(
              child: ListView.builder(
                itemCount: controller.emojiList.length,
                itemBuilder: (context, index) {
                  final emoji = controller.emojiList[index];
                  return Draggable<Emoji>(
                    data: emoji,
                    feedback: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: EmojiIconWidget(
                        emoji: emoji,
                      ),
                    ),
                    childWhenDragging: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: EmojiIconWidget(
                        emoji: emoji,
                        iconColor: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: EmojiIconWidget(emoji: emoji),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
