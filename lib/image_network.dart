import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyImageN(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// setup a stateful widget
class MyImageN extends StatefulWidget {
  @override
  _MyImageNState createState() => _MyImageNState();
}

class _MyImageNState extends State<MyImageN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design of the application
      appBar: AppBar(
        title: const Text(
          'Image Network | Tugas Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Image.network(src)
            child: Image.network(
                "https://th.bing.com/th/id/OIP.SV_9srW0KI_JYYIQoKK3NAHaFD?rs=1&pid=ImgDetMain"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://th.bing.com/th/id/OIP.SV_9srW0KI_JYYIQoKK3NAHaFD?rs=1&pid=ImgDetMain"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://th.bing.com/th/id/OIP.SV_9srW0KI_JYYIQoKK3NAHaFD?rs=1&pid=ImgDetMain"),
          )
        ]),
      ),
    );
  }
}
