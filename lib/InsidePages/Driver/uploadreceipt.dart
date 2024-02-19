import 'package:flutter/material.dart';

class UploadReceipt extends StatelessWidget {
  const UploadReceipt({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Upload Receipt Services",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.receipt,
              size: 80,
              color: Colors.purple[400],
            ),
            SizedBox(height: 20),
            Text(
              "Upload your receipt to request reimbursement",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Implement the logic to upload the receipt
              },
              icon: Icon(Icons.cloud_upload),
              label: Text("Upload Receipt"),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[400],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to submit reimbursement request
                // You may want to show a confirmation dialog here
              },
              child: Text(
                "Submit Reimbursement Request",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
