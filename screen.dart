import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelipatan 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KelipatanPage(),
    );
  }
}

class KelipatanPage extends StatefulWidget {
  @override
  _KelipatanPageState createState() => _KelipatanPageState();
}

class _KelipatanPageState extends State<KelipatanPage> {
  int currentNumber = 0;

  void generateNextNumber() {
    setState(() {
      if (currentNumber + 5 <= 30) {
        currentNumber += 5;
      } else {
        currentNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Mahasiswa - Absen Ganjil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kelipatan 5:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              currentNumber.toString(),
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => generateNextNumber(),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}