import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text and Clip Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Example | Hadeh Aplikasi',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xff7FC7D9),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: RichText(
          overflow: TextOverflow.clip,
          textAlign: TextAlign.end,
          textDirection: TextDirection.rtl,
          softWrap: true,
          maxLines: 1,
          
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style.copyWith(
                  shadows: [
                    const Shadow(
                      color: Colors.blueGrey,
                      offset: Offset(3, 2),
                      blurRadius: 3,
                    ),
                  ],
                  color: const Color(0xff365486),
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
            children: const <TextSpan>[
              TextSpan(
                text: 'World',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
