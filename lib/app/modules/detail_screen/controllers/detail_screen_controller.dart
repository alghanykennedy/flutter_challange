import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/data/model_emoji.dart';
import 'package:get/get.dart';

import '../../../core/assets.dart';

class DetailScreenController extends GetxController {
  final Rx<int> timer = 6100.obs;
  final RxString message = "".obs;
  RxString imagePreview = "".obs;

  RxList<Widget> movableEmoji = <Widget>[].obs;

  bool _isTimerRunning = false;

  var emojiList = <Emoji>[
    Emoji(id: "1", name: "meh-alt", svgUrl: icEmoji1),
    Emoji(id: "2", name: "meh-alt", svgUrl: icEmoji2),
    Emoji(id: "3", name: "meh-alt", svgUrl: icEmoji3),
    Emoji(id: "4", name: "meh-alt", svgUrl: icEmoji4),
    Emoji(id: "5", name: "meh-alt", svgUrl: icEmoji5),
    Emoji(id: "6", name: "meh-alt", svgUrl: icEmoji6),
    Emoji(id: "7", name: "meh-alt", svgUrl: icEmoji7),
    Emoji(id: "8", name: "meh-alt", svgUrl: icEmoji8),
    Emoji(id: "9", name: "meh-alt", svgUrl: icEmoji9),
    Emoji(id: "10", name: "meh-alt", svgUrl: icEmoji10),
    Emoji(id: "11", name: "meh-alt", svgUrl: icEmoji11),
    Emoji(id: "12", name: "meh-alt", svgUrl: icEmoji12),
  ].obs;

  void startTime() async {
    _isTimerRunning = true;
    for (var i = timer.value; i >= 0; i--) {
      if (!_isTimerRunning) {
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
      timer.value = i;
      if (i == 0) {
        Get.back();
        message.value = "Timeout!";
        imagePreview.value = "";
      }
    }
  }

  void onEmojiDropped(Emoji emoji) {
    imagePreview.value = emoji.svgUrl;
  }

  void onSubmit() {
    if (movableEmoji.isEmpty) {
      message.value = "You haven't imported any Emoji.";
    } else {
      message.value = "Success import Emoji!";
    }
    timer.value = 60;
    Get.back();

    if (_isTimerRunning) {
      _isTimerRunning = false;
    }
  }
}
