import 'package:flutter/material.dart';

class LeaveMessage extends StatefulWidget {
  const LeaveMessage({Key? key}) : super(key: key);

  @override
  _LeaveMessageState createState() => _LeaveMessageState();
}

class _LeaveMessageState extends State<LeaveMessage> {
  TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];

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
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: _messages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return _buildMessage(_messages[index], index);
                },
              ),
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessage(String message, int index) {
    return Dismissible(
      key: Key(_messages[index]),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        setState(() {
          _messages.removeAt(index);
        });
      },
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.0),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      child: InkWell(
        onLongPress: () {
          // Handle long-press action here
          // You can add more options or show a menu
        },
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: Text(message),
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: "Type your message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          ElevatedButton(
            onPressed: () {
              if (_messageController.text.isNotEmpty) {
                setState(() {
                  _messages.add(_messageController.text);
                  _messageController.clear();
                });
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[400],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
