import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyImage());

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Tidurpun sedap ni',
              ),
            ),
            body: Center(
                child: Column(children: <Widget>[
              Image.asset(
                'Assets/sosdap.jpg',
                height: 200,
                scale: 2.5,
                // opacity: const AlwaysStoppedAnimation<double>(0.5),
              ),
              Image.asset(
                'Assets/sosdap.jpg',
                height: 400,
                width: 400,
              ),
              ElevatedButton(child: const Text('click me'),onPressed: (){
                final player=AudioCache();
                player.play('sodapni.mp3');
              })
            ]))
            ));
  }
}
