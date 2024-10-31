import 'package:fenerbahce/screens/home_screen.dart';
import 'package:fenerbahce/widgets/football_list_widget.dart';
import 'package:flutter/material.dart';


class Football extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Squad',
          style: TextStyle(
              color: Color(0xFFFFED00), fontFamily: 'LilitaOne', fontSize: 24),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen())
            );
          },
        ),
      ),
      body: FootballListWidget(),
    );
  }
}
