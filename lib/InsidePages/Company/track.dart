import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key});

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  String lastUpdate = "10 mins ago"; // Example initial value

  void _updateLocation() {
    // Simulated location update logic
    setState(() {
      lastUpdate = "Just now";
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(
                  Icons.local_shipping,
                  size: 80,
                  color: Colors.purple[400],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Truck Location", // Replace with dynamic location information
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Last Updated: $lastUpdate", // Display dynamic time information
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Implement navigation to detailed tracking page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[400],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.location_on, size: 24, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "View on Map",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateLocation,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh, size: 24, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Update Location",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement additional action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.info, size: 24, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "More Info",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
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
