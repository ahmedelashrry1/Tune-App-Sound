import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TunnsModel {
  final Color? color;
  final String sound;

  TunnsModel({required this.color, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
