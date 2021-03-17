import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {

  Widget showUI({int numWave, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numWave);
        },
      ),
    );
  }

  void playSound(int numNode){
    final player = AudioCache();
    player.play('note$numNode.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            showUI(numWave: 1, color: Colors.red),
            showUI(numWave: 2, color: Colors.orange),
            showUI(numWave: 3, color: Colors.yellow),
            showUI(numWave: 4, color: Colors.green),
            showUI(numWave: 5, color: Colors.teal),
            showUI(numWave: 6, color: Colors.blue),
            showUI(numWave: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
