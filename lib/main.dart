import 'package:flutter/cupertino.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      "assets/note$soundNumber.wav",
    );
    assetsAudioPlayer.play();
    //final player = AudioCache();
    //player.play('note$soundNumber.wav',isLocal: true

    //);
  }

  Expanded buildKey({Color colorr,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: colorr,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorr: Colors.red,soundNumber: 1),
              buildKey(colorr: Colors.orange,soundNumber: 2),
              buildKey(colorr: Colors.yellow,soundNumber: 3),
              buildKey(colorr: Colors.green,soundNumber: 4),
              buildKey(colorr: Colors.teal,soundNumber: 5),
              buildKey(colorr: Colors.blue,soundNumber: 6),
              buildKey(colorr: Colors.purple,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
