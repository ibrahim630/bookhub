import 'package:flutter/material.dart';
import 'package:bookhub/screens/components/gesturedetector.dart';
import 'package:bookhub/screens/components/slider.dart';
import 'package:bookhub/screens/courses/Cha11.dart';
import 'package:bookhub/screens/courses/Cp11.dart';

class ClassEleven extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        foregroundColor: Colors.black54,
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.purple,
        title: Text("Grade Eleven", style: TextStyle(color: Colors.black87)),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 40),
        child: ListView(
          children: [
            Container(
              height: 175,
              child: Row(
                children: [
                  Flexible(
                    child: GestureContainer(
                      width: 150,
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CP11();
                          },
                        ));
                      },
                      image: Image(
                        image: AssetImage("assets/Class11/CE/CP.jpg"),
                        fit: BoxFit.cover,
                      ),
                      text: 'CP',
                    ),
                  ),
                  SizedBox(width: 24),
                  Flexible(
                    child: GestureContainer(
                      width: 150,
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CHA11();
                          },
                        ));
                      },
                      image: Image(
                        image: AssetImage("assets/Class11/CE/CHA.jpg"),
                        fit: BoxFit.cover,
                      ),
                      text: 'CHA',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
