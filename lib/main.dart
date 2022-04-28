// @dart=2.9

import 'package:flutter/material.dart';
import 'package:video_player_360/video_player_360.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('360 Video Player Flutter'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () async {
              await VideoPlayer360.playVideoURL(
                  "https://d960to2qanh2c.cloudfront.net/out/v1/fd902f35375d497f94bf87b2bcf414c9/e10df56494f8401c85536b9f38b689b0/f86c63765bc54e119abd2c554b003221/index.m3u8");
            },
            child: Text("Click to play Video URL"),
          ),
        ),
      ),
    );
  }
}