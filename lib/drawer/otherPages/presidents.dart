//https://www.whitehouse.gov/about-the-white-house/presidents/ buradan örnek olabilir

import 'package:fenerbahce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Presidents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: const Text(
          "Our Presidents",
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontFamily: 'LilitaOne',
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/fb.jpg',
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
    );
  }
}