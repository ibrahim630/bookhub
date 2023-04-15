import 'package:flutter/material.dart';
import 'package:bookhub/screens/components/slider.dart';
import 'package:bookhub/screens/homepage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  String? email;
  String? password;
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      backgroundColor: Colors.purple,
      appBar: AppBar(
        foregroundColor: Colors.black54,
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.purple,
        title:
            Text("Login Page", style: TextStyle(color: Colors.black87)),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    child: Image(
                  image: AssetImage("assets/About/ic_launcher.png"),
                  height: 130,
                  width: 250,
                )),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                onChanged: (value) {
                  email = value;
                  //Do something with the user input.
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  print(email);
                  print(password);
                  //using static login with fixed email and password
                  if (email == "ibrahim@gmail.com" &&
                      password == "ibrahim") {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ));
                  } else {
                    setState(() {
                      errorMessage = 'Your account does not exist';
                    });
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
                child: Text(
              errorMessage,
              style: TextStyle(color: Colors.red[300]),
            )),
          ],
        ),
      ),
    );
  }
}
