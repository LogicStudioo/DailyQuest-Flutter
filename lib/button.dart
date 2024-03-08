import 'package:aplikasi_hadeh/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyButton());

class MyButton extends StatelessWidget {
  const MyButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Elevated Button | Aplikasi Hadeh'),
          // Adding a back button to the AppBar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
        ),
        body: const MyElevatedButtonExample(),
      ),
    );
  }
}

class MyElevatedButtonExample extends StatefulWidget {
  const MyElevatedButtonExample({Key? key});

  @override
  State<MyElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<MyElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle textStyleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );

    final ButtonStyle borderButton = ElevatedButton.styleFrom(
      side: const BorderSide(
        width: 2,
        color: Colors.red,
      ),
    );

    final ButtonStyle shapeAndShadowButton = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 10,
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: textStyleButton,
            onPressed: null,
            child: const Text('Custom Text Style'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: borderButton,
            onPressed: () {},
            child: const Text('Custom Border'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: shapeAndShadowButton,
            onPressed: () {},
            child: const Text('Custom Shape and Shadow'),
          ),
        ],
      ),
    );
  }
}
