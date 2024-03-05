import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme.dart';
import '../../../../routes/app_pages.dart';
import '../../../detail_screen/controllers/detail_screen_controller.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.controllerDetail,
  });

  final DetailScreenController controllerDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Material(
        color: blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide.none,
        ),
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.DETAIL_SCREEN);
            controllerDetail.startTime();
          },
          child: const Center(
            child: Text(
              "Detail Screen",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
