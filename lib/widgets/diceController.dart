import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:dice/configs/assets.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  Rx<int> totalDices = 1.obs;
  var diceNumber1 = 1.obs;
  Rx<int> diceNumber2 = 1.obs;
  Rx<int> diceNumber3 = 1.obs;
  Rx<int> diceNumber4 = 1.obs;
  var rotationValue = 0.0.obs;
  var isRolling = false.obs;

  void rollDice() {
    if (isRolling.value) return;
    PlaySound();
    isRolling.value = true;
    const int totalDuration = 700;
    const int interval = 50;
    int elapsed = 0;
    Timer.periodic(const Duration(milliseconds: interval), (timer) {
      if (elapsed >= totalDuration) {
        timer.cancel();
        diceNumber1.value = Random().nextInt(6) + 1;
        diceNumber2.value = Random().nextInt(6) + 1;
        diceNumber3.value = Random().nextInt(6) + 1;
        diceNumber4.value = Random().nextInt(6) + 1;
        isRolling.value = false;
      } else {
        rotationValue.value += 0.5;
        elapsed += interval;
      }
    });
  }

  void addDice() {
    if (totalDices.value < 4) {
      totalDices.value++;
    }
  }

  void decreaseDice() {
    if (totalDices.value > 1) {
      totalDices.value--;
    }
  }

  Future<void> PlaySound() async {
    final _audioPlayer = AudioPlayer();
    await _audioPlayer.play(AssetSource(Assets.audio));
  }
}
