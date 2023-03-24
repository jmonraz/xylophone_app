import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gap/gap.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }

  Widget soundKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundKey(color: Colors.red, soundNumber: 1),
              soundKey(color: Colors.orange, soundNumber: 2),
              soundKey(color: Colors.yellow, soundNumber: 3),
              soundKey(color: Colors.green, soundNumber: 4),
              soundKey(color: Colors.blue, soundNumber: 5),
              soundKey(color: Colors.pink, soundNumber: 6),
              soundKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
