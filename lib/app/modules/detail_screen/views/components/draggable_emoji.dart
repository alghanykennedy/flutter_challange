import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:random_color/random_color.dart';

class MoveableStackEmoji extends StatefulWidget {
  const MoveableStackEmoji({
    super.key,
    required this.svg,
  });

  final String svg;

  @override
  State<StatefulWidget> createState() {
    return _MoveableStackEmojiState();
  }
}

class _MoveableStackEmojiState extends State<MoveableStackEmoji> {
  double xPosition = 0;
  double yPosition = 0;
  // double xPosition = 250 / 2;
  // double yPosition = 250 / 2;
  Color? color;
  @override
  void initState() {
    color = RandomColor().randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
          onPanUpdate: (tapInfo) {
            setState(() {
              xPosition += tapInfo.delta.dx;
              yPosition += tapInfo.delta.dy;
            });
          },
          child: SizedBox(
            height: 150,
            width: 150,
            child: SvgPicture.asset(
              widget.svg,
            ),
          )),
    );
  }
}
