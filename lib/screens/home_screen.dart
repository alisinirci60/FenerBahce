// ignore_for_file: use_key_in_widget_constructors

import 'package:fenerbahce/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';
import '../widgets/news_data.dart'; // news_data'yı içe aktar

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 114),
        centerTitle: true,
        title: const Text(
          "FENERBAHÇE",
          style: TextStyle(
            color: Color(0xFFFFED00),
            fontFamily: 'LilitaOne',
            fontSize: 24,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white), // Arama ikonu beyaz
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(), // Arama işlevselliği
              );
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: newsData.length,
        itemBuilder: (context, index) {
          final newsItem = newsData[index]; // newsData'dan veri çekiyoruz
          return CustomWidget(item: newsItem);
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  // Arama yapılacak veriler
  final List<String> data = [
    "Samsunspor maçının deplasman tribünü biletleri satışa çıkıyor",
    "Fenerbahçe Beko, Kızılyıldız’ı konuk ediyor",
    "Avrupa Ligi'nde Yeni Rakip!",
    "Başkanımız Ali Y. Koç, basın toplantısında çok önemli açıklamalarda bulundu",
    "Fenerbahçe Medicana - Eczacıbaşı Dynavit: 3-1 (MAÇ SONUCU)",
    "MİLLİLER İZLANDA'DA TARİH YAZDI!",
    "Norwich Teknik Direktörü Palmer'dan Osayi Samuel açıklaması",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // Arama kutusunu temizle
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // Arama kutusunu kapat
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = data.where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            close(context, results[index]); // Sonucu seçince arama kutusunu kapat
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = data.where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index]; // Öneri tıklanınca sorguyu güncelle
            showResults(context); // Sonuçları göster
          },
        );
      },
    );
  }
}
