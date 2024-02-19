import 'package:flutter/material.dart';

class EmergencyServices extends StatelessWidget {
  const EmergencyServices({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Emergency Services",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildEmergencyOption(
              icon: Icons.add_alert,
              label: "SOS",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SOSEmergencyPage()));
              },
            ),
            SizedBox(height: 20),
            buildEmergencyOption(
              icon: Icons.phone,
              label: "Contact Company",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactCompanyPage()));
              },
            ),
            SizedBox(height: 20),
            buildEmergencyOption(
              icon: Icons.local_police,
              label: "Contact Nearby Police",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NearbyPolicePage()));
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic for additional action
                // For example, triggering an alarm
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Trigger Alarm",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEmergencyOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SOSEmergencyPage extends StatelessWidget {
  const SOSEmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "SOS Emergency",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_alert,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Text(
              "Sending SOS signal...",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic for additional action on SOS page
                // For example, contacting emergency services
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 236, 128, 121),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Contact Emergency Services",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCompanyPage extends StatelessWidget {
  const ContactCompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Contact Company",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              "Contacting Company...",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic for additional action on Contact Company page
                // For example, initiating a video call
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Initiate Video Call",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NearbyPolicePage extends StatelessWidget {
  const NearbyPolicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Nearby Police Stations",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: ListView(
        children: [
          buildPoliceStationItem("Police Station 1"),
          buildPoliceStationItem("Police Station 2"),
          buildPoliceStationItem("Police Station 3"),
          // Add more police stations as needed
        ],
      ),
    );
  }

  Widget buildPoliceStationItem(String stationName) {
    return ListTile(
      title: Text(
        stationName,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text("Address: Dummy Address"),
      onTap: () {
        // Add logic for tapping on a police station item
        // For example, opening navigation to the police station
      },
    );
  }
}
