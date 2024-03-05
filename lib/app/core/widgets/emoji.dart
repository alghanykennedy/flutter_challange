import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../modules/detail_screen/controllers/detail_screen_controller.dart';

class EmojiWidget extends StatelessWidget {
  const EmojiWidget({
    super.key,
    required this.controllerDetail,
  });

  final DetailScreenController controllerDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: SvgPicture.asset(
        controllerDetail.imagePreview.value,
      ),
    );
  }
}
