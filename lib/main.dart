import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/homepage.dart';
import './screens/firstpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Hub',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple,
      ),
      //home: HomePage(),
      home: FirstPage(),
    );
  }
}
