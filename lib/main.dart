import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer loliplayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ElevatedButton(
            onPressed: () async {
              await loliplayer.play(
                'assets/Audio/ohmaygah_1.mp3',
                isLocal: true,
              );
            },
            child: Text('play'),
          ),
        ),
      ),
    );
  }
}
