import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carouselkan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCarousel(),
    );
  }
}

class MyCarousel extends StatelessWidget {
  final List<String> images = [
    'Assets/1.jpg',
    'Assets/2.jpg',
    'Assets/3.jpg',
    'Assets/4.jpg',
    'Assets/5.jpg',
    'Assets/6.jpg',
    'Assets/7.jpg',
    'Assets/8.jpg',
    'Assets/9.jpg',
    'Assets/10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Komik Bonus Exp',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 5 / 5,
            enlargeCenterPage: true,
          ),
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
