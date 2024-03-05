import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme.dart';
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
        const SizedBox(
          height: 50,
        ),
        Obx(
          () => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
              color: controllerDetail.imagePreview.value.isEmpty
                  ? Colors.grey.withOpacity(0.8)
                  : greyHint,
            ),
            child: Center(
              child: controllerDetail.imagePreview.isEmpty
                  ? Text(
                      title,
                      textAlign: TextAlign.center,
                    )
                  : EmojiWidget(controllerDetail: controllerDetail),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
