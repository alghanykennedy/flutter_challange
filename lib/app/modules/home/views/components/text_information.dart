import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme.dart';
import '../../../detail_screen/controllers/detail_screen_controller.dart';

class TextInformation extends StatelessWidget {
  const TextInformation({
    super.key,
    required this.controllerDetail,
  });

  final DetailScreenController controllerDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
            controllerDetail.message.value.isEmpty
                ? "Welcome to Flutter Challenge!"
                : controllerDetail.message.value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: controllerDetail.message.isEmpty
                  ? black
                  : controllerDetail.message.value == "Success import Emoji!"
                      ? green
                      : red,
            ),
          ),
        ),
      ],
    );
  }
}
