import 'package:fenerbahce/drawer/otherPages/news.dart';
import 'package:fenerbahce/drawer/otherPages/our_stadium.dart';
import 'package:fenerbahce/drawer/otherPages/presidents/presidents.dart';
import 'package:fenerbahce/screens/derby.dart';
import 'package:fenerbahce/screens/home_screen.dart';
import 'package:fenerbahce/screens/login_page.dart';
import 'package:fenerbahce/screens/signup_page.dart';
import 'package:fenerbahce/screens/transfer_news.dart';
import 'package:flutter/material.dart';

class NewsSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> searchItems = [
    {
      'title': 'Fenerbahçe-Manchester United',
      'page': Derby(),
    },
    {
      'title': 'Message from the President',
      'page': Presidents(),
    },
    {
      'title': 'Transfer News',
      'page': TransferListPage(),
    },
    {
      'title': 'News',
      'page': News(),
    },
    {
      'title': 'Our Stadium',
      'page': OurStadium(),
    },
    {
      'title': 'Home Page',
      'page': HomeScreen(),
    },
    {
      'title': 'Login',
      'page': LoginPage(),
    },
    {
      'title': 'SignUp',
      'page': SignUpPage(),
    },
  ];

  NewsSearchDelegate()
      : super(
          searchFieldDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white, // Arama kutusu arka planı beyaz
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            hintStyle: TextStyle(color: Colors.white), // İpucu metni beyaz
          ),
        );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromARGB(255, 0, 45, 114), // AppBar rengi
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(color: Colors.white), // Arama metni beyaz
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear, color: Colors.white), // Arama kutusu temizleme butonu beyaz
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white), // Geri butonu beyaz
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Map<String, dynamic>> matchQuery = [];
    for (var item in searchItems) {
      if (item['title'].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result['title']),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => result['page']),
            );
          },
        );
      },
    );
  }

  // Öneri bölümünü kaldırmak için boş bir widget döndürüyoruz
  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(); // Öneri bölümü boş
  }
}
