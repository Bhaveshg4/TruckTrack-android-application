import 'package:bus_track_1/InsidePages/Driver/emergency.dart';
import 'package:bus_track_1/InsidePages/Driver/payment.dart';
import 'package:bus_track_1/InsidePages/Driver/requestfood.dart';
import 'package:bus_track_1/InsidePages/Driver/uploadreceipt.dart';
import 'package:flutter/material.dart';

class Driverpage extends StatelessWidget {
  const Driverpage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Driver's Desk",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildFeatureContainer(
                      imagePath: "assets/truck1.jpeg",
                      description: "You can request any one time food",
                    ),
                    buildFeatureContainer(
                      imagePath: "assets/upishowreel.jpeg",
                      description: "Pay via UPI Gateway",
                    ),
                    buildFeatureContainer(
                      imagePath: "assets/truck1.jpeg",
                      description: "You can easily chat with the company",
                    ),
                    buildFeatureContainer(
                      imagePath: "assets/emergency_showreeldriver.jpeg",
                      description: "We are with you 24x7 in case of Emergency",
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hi, Welcome back!",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "What's on your mind today?",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  buildGridItem(
                    imagePath: "assets/upishowreel.jpeg",
                    text: "Payment Gateway",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                  ),
                  buildGridItem(
                    imagePath: "assets/emergency.jpeg",
                    text: "Emergency Help!",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmergencyServices()));
                    },
                  ),
                  buildGridItem(
                    imagePath: "assets/upload.jpeg",
                    text: "Upload receipt",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadReceipt()));
                    },
                  ),
                  buildGridItem(
                    imagePath: "assets/food.jpeg",
                    text: "Our Services",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RequestFood())); // Replace '/request_meal' with your actual path
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureContainer(
      {required String imagePath, required String description}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 350,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width: 280,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(
      {required String imagePath,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
