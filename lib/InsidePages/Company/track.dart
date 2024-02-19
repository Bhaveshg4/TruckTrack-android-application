import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  const Track({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text(
          "Track Vehicle",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
        backgroundColor: Colors.purple[400],
      ),
    );
  }
}
