import 'package:bus_track_1/InsidePages/Company/contactdrive.dart';
import 'package:bus_track_1/InsidePages/Company/leave_message.dart';
import 'package:bus_track_1/InsidePages/Company/track.dart';
import 'package:bus_track_1/InsidePages/Company/view_request.dart';
import 'package:flutter/material.dart';

class Companypage extends StatelessWidget {
  const Companypage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Company's Desk",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      "Know about tracking info..",
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildFeatureContainer(
                      onTap: () {
                        Navigator.pushNamed(context, '/track');
                      },
                      imagePath: "assets/contact.jpg",
                      description: "Keep in touch with your truck 24x7",
                    ),
                    buildFeatureContainer(
                      onTap: () {
                        Navigator.pushNamed(context, '/contactDriver');
                      },
                      imagePath: "assets/onboardpic.jpeg",
                      description: "Live GPS coordinates of your vehicle",
                    ),
                    buildFeatureContainer(
                      onTap: () {
                        Navigator.pushNamed(context, '/leaveMessage');
                      },
                      imagePath: "assets/truck1.jpeg",
                      description:
                          "We ensure security to your goods and packages",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // GridView with 2 columns
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  buildGridItem(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Track()));
                    },
                    imagePath: "assets/onboardpic.jpeg",
                    text: "Track",
                  ),
                  buildGridItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactDriver()));
                    },
                    imagePath: "assets/contact.jpg",
                    text: "Contact Driver",
                  ),
                  buildGridItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LeaveMessage()));
                    },
                    imagePath: "assets/message.jpg",
                    text: "Leave message",
                  ),
                  buildGridItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewRequest()));
                    },
                    imagePath: "assets/approve.jpg",
                    text: "View Requests",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureContainer(
      {required VoidCallback onTap,
      required String imagePath,
      required String description}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
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
      ),
    );
  }

  Widget buildGridItem(
      {required VoidCallback onTap,
      required String imagePath,
      required String text}) {
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
