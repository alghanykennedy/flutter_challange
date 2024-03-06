import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/detail_screen_controller.dart';

class TextTimeCounter extends StatelessWidget {
  const TextTimeCounter({
    super.key,
    required this.controller,
  });

  final DetailScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
            'Waktu tersisa: ${controller.timer.value}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
