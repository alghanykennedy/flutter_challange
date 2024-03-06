import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/emoji.dart';
import '../../../detail_screen/controllers/detail_screen_controller.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    super.key,
    required this.controllerDetail,
    required this.height,
    required this.width,
    required this.title,
  });

  final DetailScreenController controllerDetail;
  final String title;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
              border: Border.all(width: 1),
              color: controllerDetail.imagePreview.value.isEmpty
                  ? Colors.grey
                  : Colors.transparent,
              // color: Colors.transparent,
            ),
            child: Center(
              //     child: Text(
              //   title,
              //   textAlign: TextAlign.center,
              // )
              child: controllerDetail.imagePreview.isEmpty
                  ? Text(
                      title,
                      textAlign: TextAlign.center,
                    )
                  : Draggable(
                      feedback: EmojiWidget(controllerDetail: controllerDetail),
                      childWhenDragging: Container(),
                      child: EmojiWidget(controllerDetail: controllerDetail),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
