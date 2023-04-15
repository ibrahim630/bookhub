import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookhub/screens/admincontrol/login.dart';
import 'package:bookhub/screens/components/slider.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Draw(),
        appBar: AppBar(
          foregroundColor: Colors.black54,
          iconTheme: IconThemeData(color: Colors.black54),
          backgroundColor: Colors.purple,
          title: Text("About App", style: TextStyle(color: Colors.black87)),
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.purple,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/About/ic_launcher.png"),
                        height: 130,
                        width: 250,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "BookHub",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontFamily: "Arial",
                        ),
                      ),
                      SizedBox(height: 4.0),
                      SizedBox(height: 7.0),
                      Text(
                        "This is an educational resource collection that encompasses a diverse range of materials, such as PDFs, images, question papers, essential questions, programs, and helpful videos, which can aid in a more efficient learning experience. At first, it was limited to resources that cater to technical students pursuing computer engineering from grades 9 to 12. However, it now includes an array of materials covering topics like culture, religion, technology, science, computers, programming languages, mathematics, SAT preparation, and more. The ultimate goal of this application is to facilitate learning by making it easily accessible from anywhere.",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Let's increase our resources. ibrahim@gmail.com",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 3),
                child: Text(
                  "Social Links",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ),
              Card(
                color: Colors.purple,
                elevation: 2.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        launch("https://www.facebook.com/iavci38/");
                      },
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.facebook),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://twitter.com/iavci01");
                      },
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.twitter),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.youtube.com/@abdul_bari");
                      },
                      color: Colors.red,
                      icon: Icon(FontAwesomeIcons.youtube),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.linkedin.com/in/iavci/");
                      },
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.linkedin),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.purple,
                elevation: 2.0,
                child: ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: Colors.red.shade600,
                  ),
                  title: Text(" Disclaimer !",
                      style: TextStyle(
                          color: Colors.red.shade600,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      "The information and data presented within this application are intended solely for informational purposes. While we have made our best efforts to provide accurate information, we do not guarantee its accuracy or validity, and will not be held liable for any errors or delays. The question papers included in this app have been collected from various students studying in grades 9-12 and do not belong to the app owner. If you are the rightful owner of any of the resources and wish to have them removed from the app, please contact us with appropriate details via email. The app owner cannot be held responsible if any of the contents offend specific tribes or cultures.",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ));
                },
                child: Card(
                  color: Colors.purple,
                  elevation: 2.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.login,
                      color: Colors.red.shade600,
                    ),
                    title: Text(" Admin Login !",
                        style: TextStyle(
                            color: Colors.red.shade600,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        "Priviliged Access",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
