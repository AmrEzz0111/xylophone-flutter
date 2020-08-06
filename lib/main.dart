import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
var color = Colors.amber;

Widget layout(var color, var voiceNum) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$voiceNum.wav');
      },
      child: Container(
        child: Center(
          child: Text('Voice$voiceNum'),
        ),
      ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              layout(Colors.amber, 1),
              layout(Colors.blue, 2),
              layout(Colors.green, 3),
              layout(Colors.purple, 4),
              layout(Colors.cyan, 5),
              layout(Colors.blueGrey, 6),
              layout(Colors.blueAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
