import 'package:fenerbahce/widgets/news_data.dart';
import 'package:flutter/material.dart';
import 'package:fenerbahce/screens/home_screen.dart';
import 'package:fenerbahce/widgets/news_widget.dart'; // CustomWidget'ı buradan import ediyoruz

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(
              color: Color(0xFFFFED00), fontFamily: 'LilitaOne', fontSize: 24),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: newsData.length, // Haberlerin sayısı
        itemBuilder: (BuildContext context, int index) {
          final newsItem = newsData[index];
          return CustomWidget(item: newsItem); // CustomWidget'ı kullanıyoruz
        },
      ),
    );
  }
}
