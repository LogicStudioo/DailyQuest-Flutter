import 'package:flutter/material.dart';

void main() {
  runApp(Pablo());
}

class Pablo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPablo(),
    );
  }
}

class MyPablo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Table Demo'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          children: const [
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Header 1'))),
                TableCell(child: Center(child: Text('Header 2'))),
                TableCell(child: Center(child: Text('Header 3'))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Data 1'))),
                TableCell(child: Center(child: Text('Data 2'))),
                TableCell(child: Center(child: Text('Data 3'))),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(child: Text('Data 4'))),
                TableCell(child: Center(child: Text('Data 5'))),
                TableCell(child: Center(child: Text('Data 6'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
