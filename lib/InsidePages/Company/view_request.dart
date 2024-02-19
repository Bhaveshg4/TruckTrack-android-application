import 'package:flutter/material.dart';

class ViewRequest extends StatefulWidget {
  const ViewRequest({Key? key}) : super(key: key);

  @override
  _ViewRequestState createState() => _ViewRequestState();
}

class _ViewRequestState extends State<ViewRequest> {
  List<Request> _requests = [
    Request(
        name: "Bhavesh Gupta", description: "Can i be on leave from today?"),
    Request(
        name: "Advika Metre",
        description: "I want to go to my dance class, can i go?"),
    // Add more requests as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text(
          "Requests by Driver",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: ListView.builder(
        itemCount: _requests.length,
        itemBuilder: (context, index) {
          return _buildRequestCard(_requests[index]);
        },
      ),
    );
  }

  Widget _buildRequestCard(Request request) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        setState(() {
          if (direction == DismissDirection.startToEnd) {
            // Swipe left: Approve request
            // Implement the approval logic here
          } else if (direction == DismissDirection.endToStart) {
            // Swipe right: Delete request
            _requests.remove(request);
          }
        });
      },
      background: _buildSwipeBackground(ApprovalAction.Approve),
      secondaryBackground: _buildSwipeBackground(ApprovalAction.Delete),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple[400],
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(request.name),
            subtitle: Text(request.description),
          ),
        ),
      ),
    );
  }

  Widget _buildSwipeBackground(ApprovalAction action) {
    Color backgroundColor =
        action == ApprovalAction.Approve ? Colors.green : Colors.red;

    IconData icon =
        action == ApprovalAction.Approve ? Icons.check : Icons.delete;

    String label = action == ApprovalAction.Approve ? "Approve" : "Delete";

    return Container(
      color: backgroundColor,
      child: Align(
        alignment: action == ApprovalAction.Approve
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ApprovalAction { Approve, Delete }

class Request {
  final String name;
  final String description;

  Request({required this.name, required this.description});
}
