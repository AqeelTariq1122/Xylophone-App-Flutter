
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 void chaneSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({Color color, int sound}) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),

        ),
        onPressed: () {
          chaneSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildKey(color: Colors.pink, sound:1),
              buildKey(color: Colors.amber, sound:2),
              buildKey(color: Colors.teal, sound:3),
              buildKey(color: Colors.purple, sound:4),
              buildKey(color: Colors.deepOrange, sound:5),
              buildKey(color: Colors.blue, sound:5),
              buildKey(color: Colors.green, sound:7),

            ],
          ),
        ),
      ),
    );
  }
}
