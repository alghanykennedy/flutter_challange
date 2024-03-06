import 'package:flutter/material.dart';

import '../../../../core/theme.dart';
import '../../controllers/detail_screen_controller.dart';

class ChecklistButton extends StatelessWidget {
  const ChecklistButton({
    super.key,
    required this.controller,
  });

  final DetailScreenController controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.onSubmit,
      child: Container(
        height: 35,
        width: 35,
        color: green,
        child: const Icon(
          Icons.check,
          color: white,
          size: 28,
        ),
      ),
    );
  }
}
