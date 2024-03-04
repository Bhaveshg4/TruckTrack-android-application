import 'package:bus_track_1/InsidePages/Company/Map.dart';
import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key});

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  String lastUpdate = "10 mins ago";
  String truckLocation = "City Center";

  void _updateLocation() {
    // Simulated location update logic
    setState(() {
      lastUpdate = "Just now";
      // Simulated dynamic location information
      truckLocation = "RCOEM, Nagpur";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple, // Updated background color
      appBar: AppBar(
        title: const Text(
          "Track Vehicle",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purpleAccent, // Updated app bar color
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
                color: Colors.purpleAccent, // Updated container color
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purpleAccent.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.local_shipping,
                  size: 80,
                  color: Color.fromARGB(255, 34, 33, 34),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Truck Location: $truckLocation",
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              "Last Updated: $lastUpdate",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to MapPage
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveLocationMap()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateLocation,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement additional action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Row(
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
            const SizedBox(height: 20),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
