import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void PlaySound(int SoundNumber) {
  final audioplayer = AudioCache();
  audioplayer.play('note$SoundNumber.wav');
}

Expanded CreateKey({Color color, int sound}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        PlaySound(sound);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CreateKey(color: Colors.red, sound: 1),
              CreateKey(color: Colors.orange, sound: 2),
              CreateKey(color: Colors.yellow, sound: 3),
              CreateKey(color: Colors.green, sound: 4),
              CreateKey(color: Colors.teal, sound: 5),
              CreateKey(color: Colors.blue, sound: 6),
              CreateKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
