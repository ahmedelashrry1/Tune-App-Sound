// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  TuneModel({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

class Tuneview extends StatelessWidget {
  Tuneview({super.key});

  final List<TuneModel> tunne = [
    TuneModel(color: Colors.black,  sound: 'note1.wav'),
    TuneModel(color: Colors.red,    sound: 'note2.wav'),
    TuneModel(color: Colors.orange, sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Colors.green,  sound: 'note5.wav'),
    TuneModel(color: Colors.blue,   sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tune"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: tunne.map((e) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                e.playSound();
              },
              child: Container(
                color: e.color,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
