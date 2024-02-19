import 'package:flutter/material.dart';

class LeaveMessage extends StatelessWidget {
  const LeaveMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text(
          "Leave message for driver",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
        backgroundColor: Colors.purple[400],
      ),
    );
  }
}
