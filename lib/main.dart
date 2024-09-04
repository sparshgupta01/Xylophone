import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

 // final AudioCache audioCache = AudioCache();
Expanded buildfn(Color paint,int a){
  return Expanded(
    child: InkWell(onTap: () async {
      final player = AudioPlayer();
      await player.play(AssetSource('note$a.wav'));
    },
      child: Container(
        color: paint,
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildfn(Colors.white,1),
              buildfn(Colors.black,2),
              buildfn(Colors.white,3),
              buildfn(Colors.black,4),
              buildfn(Colors.white,5),
              buildfn(Colors.black,6
              ),
              buildfn(Colors.white,7),
            ],
          ),
        )
      )
    );}}
