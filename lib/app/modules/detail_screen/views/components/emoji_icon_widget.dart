// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/model_emoji.dart';

class EmojiIconWidget extends StatelessWidget {
  const EmojiIconWidget({
    super.key,
    required this.emoji,
    this.iconColor,
  });

  final Emoji emoji;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: SvgPicture.asset(
        emoji.svgUrl,
        color: iconColor,
      ),
    );
  }
}
