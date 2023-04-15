import 'package:flutter/material.dart';
import 'package:bookhub/screens/components/slider.dart';
import 'package:bookhub/screens/components/youtubeid.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Techvideos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        foregroundColor: Colors.black54,
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.purple,
        title:
            Text("Tech Videos", style: TextStyle(color: Colors.black87)),
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
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Software Engineering: Crash Course Computer Science",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKr,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Microservices Explained in 5 Minutes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKa1,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "How do computers read code?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKa2,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "What You Need to Know for Your Coding Career",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKa3,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "How to create coding tutorials [or at least how I make them]",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKv,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Flutter Tutorial for Beginners #1 - Intro & Setup",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKf1,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Swift in 100 Seconds",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKf2,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Kotlin Course - Tutorial for Beginners",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKf3,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Learn Go Programming - Golang Tutorial for Beginners",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKgm,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3),
              child: Card(
                color: Colors.grey.shade200,
                elevation: 2.0,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Learn Docker in 7 Easy Steps - Full Beginner's Tutorial",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: YoutubePlayer(
                controller: controllerKrp,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
