import 'package:flutter/material.dart';

class ContactDriver extends StatelessWidget {
  const ContactDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text(
          "Contact Driver",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  "assets/driver_avatar.jpg"), // Add a driver avatar image
            ),
            SizedBox(height: 20),
            Text(
              "Driver Name", // Replace with the actual driver's name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Truck License Plate: XXX-XXXX", // Replace with the actual license plate
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement calling functionality
                    // You can use packages like url_launcher to initiate a call
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.phone, size: 24),
                      SizedBox(width: 10),
                      Text(
                        "Call",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement video calling functionality
                    // You can use packages like url_launcher to initiate a video call
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.videocam, size: 24),
                      SizedBox(width: 10),
                      Text(
                        "Video Call",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            // Add more features/widgets here
            // Example: Text("Additional Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            //          YourAdditionalWidget(),
          ],
        ),
      ),
    );
  }
}
