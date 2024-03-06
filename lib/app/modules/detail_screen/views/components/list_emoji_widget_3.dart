import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/modules/detail_screen/views/components/draggable_emoji.dart';
import 'package:get/get.dart';

import '../../controllers/detail_screen_controller.dart';
import 'emoji_icon_widget.dart';

class ListEmojiWidget3 extends StatelessWidget {
  const ListEmojiWidget3({
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
                  return GestureDetector(
                    child: EmojiIconWidget(
                      emoji: emoji,
                      iconColor: Colors.grey.withOpacity(0.8),
                    ),
                    onTap: () {
                      // controller.onEmojiDropped(emoji);
                      controller.movableEmoji
                          .add(MoveableStackEmoji(svg: emoji.svgUrl));
                    },
                  );
                  // Draggable<Emoji>(
                  //   data: emoji,
                  //   feedback: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //       vertical: 15,
                  //     ),
                  //     child: EmojiIconWidget(
                  //       emoji: emoji,
                  //     ),
                  //   ),
                  //   childWhenDragging: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //       vertical: 15,
                  //     ),
                  //     child: EmojiIconWidget(
                  //       emoji: emoji,
                  //       iconColor: Colors.grey.withOpacity(0.8),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //       vertical: 15,
                  //     ),
                  //     child: EmojiIconWidget(emoji: emoji),
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
