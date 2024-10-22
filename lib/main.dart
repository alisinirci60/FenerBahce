import 'package:fenerbahce/screens/welcome_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fenerbahçe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: WelcomePage(), 
    );
  }
}
