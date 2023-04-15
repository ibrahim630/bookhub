import 'package:flutter/material.dart';
import 'package:bookhub/screens/aboutpage.dart';
import 'package:bookhub/screens/homepage.dart';
import 'package:bookhub/screens/library.dart';
import 'package:bookhub/screens/stdclasses.dart';
import 'package:bookhub/screens/techvideos.dart';

class Draw extends StatelessWidget {
  const Draw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.all(0),
          child: Container(
            color: Colors.purple,
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/About/ic_launcher.png"),
                  height: 150,
                  width: 150,
                ),
                Text("BookHub",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black87,
                    )),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ));
          },
          leading: Icon(Icons.home_filled),
          title: Text("Home"),
        ),
        ////////////
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return StdClass();
              },
            ));
          },
          leading: Icon(Icons.chrome_reader_mode_sharp),
          title: Text("Classes"),
        ),
        ///////////////////
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return LibraryPage();
              },
            ));
          },
          leading: Icon(Icons.library_books_sharp),
          title: Text("Library"),
        ),
        //////////////////
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Techvideos();
              },
            ));
          },
          leading: Icon(Icons.video_library),
          title: Text("Tech Videos"),
        ),
        /////////////

        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AboutPage();
              },
            ));
          },
          leading: Icon(Icons.info),
          title: Text("About App"),
        ),
        ///////////////
      ],
    ));
  }
}
