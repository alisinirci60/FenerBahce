import 'package:fenerbahce/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'drawer/my_drawer.dart';
import '../widgets/news_data.dart';

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
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: newsData.length,
        itemBuilder: (context, index) {
          final newsItem = newsData[index];
          return CustomWidget(item: newsItem);
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
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
          query = ''; 
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); 
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
            close(context, results[index]); 
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container(); 
    }
    
    final suggestions = data.where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
